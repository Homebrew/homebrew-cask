# typed: false
# frozen_string_literal: true

require "json"
require "open3"
require "download_strategy"
require "uri"
require "fileutils"
require "tmpdir"

DOWNLOAD_TOKEN = "80455587a3294e209846d7722f500906"

class BlackmagicDownloadStrategy < CurlDownloadStrategy
  def fetch(timeout: nil)
    # Skip download if file is already cached
    token = resolve_download_token
    signed_url = request_signed_url(token)

    # derive cached filename from signed URL when possible
    begin
      uri = URI.parse(signed_url)
    rescue
      uri = nil
    end

    basename = uri && File.basename(uri.path)
    filename = if basename && basename != ""
      basename
    else
      "DaVinci_Resolve_#{Time.now.to_i}.zip"
    end
    cache_dir = File.expand_path("~/Library/Caches/Homebrew/Cask/downloads")
    FileUtils.mkdir_p(cache_dir)

    # determine Homebrew's expected cached location (fallback to our derived filename)
    begin
      expected_cached = cached_location
    rescue
      expected_cached = Pathname.new(cache_dir) / filename
    end

    if expected_cached.exist?
      ohai "Using cached DaVinci Resolve: #{expected_cached.basename}"
      return
    end

    ohai "Downloading DaVinci Resolve from signed Blackmagic URL"

    tmpfile = File.join(cache_dir, ".#{filename}.incomplete.#{Process.pid}.#{Time.now.to_i}")
    _, stderr, status = Open3.capture3(
      "curl",
      "--silent",
      "--show-error",
      "--fail",
      "--location",
      "--output", tmpfile,
      "--request", "GET",
      "--header", "accept: application/json, text/plain, */*",
      "--header", "accept-language: en-US,en;q=0.9",
      signed_url
    )

    unless status.success?
      begin
        File.delete(tmpfile)
      rescue Errno::ENOENT
        # ignore
      end

      message = stderr.strip
      message = "curl exited with status #{status.exitstatus}" if message.empty?
      raise CurlDownloadStrategyError, "DaVinci Resolve download failed: #{message}"
    end

    # move into cache atomically (to Homebrew's expected location)
    begin
      FileUtils.mv(tmpfile, expected_cached)
    rescue => e
      begin
        File.delete(tmpfile)
      rescue Errno::ENOENT
        # ignore
      end
      raise CurlDownloadStrategyError, "Failed to move download into cache: #{e}"
    end
  end

  private

  def resolve_download_token
    DOWNLOAD_TOKEN
  end

  def request_signed_url(token)
    endpoint = "https://www.blackmagicdesign.com/api/register/us/download/#{token}"

    json_data = JSON.generate({
      platform:  "Mac OS X",
      policy:    true,
      product:   "DaVinci Resolve",
      country:   "us",
      firstname: "Homebrew",
      lastname:  "User",
      email:     "test@example.com",
      phone:     "+10000000000",
      street:    "Unknown",
      city:      "New York",
      state:     "New York",
      zip:       "10001",
      origin:    "www.blackmagicdesign.com",
    })

    stdout, stderr, status = Open3.capture3(
      "curl",
      "--silent",
      "--show-error",
      "--fail",
      "--location",
      "--request", "POST",
      "--header", "accept: application/json, text/plain, */*",
      "--header", "accept-language: en-US,en;q=0.9",
      "--header", "content-type: application/json;charset=UTF-8",
      "--header", "origin: https://www.blackmagicdesign.com",
      "--header", "referer: https://www.blackmagicdesign.com/support",
      "--header", "user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) " \
                  "AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15",
      "--header", "x-requested-with: XMLHttpRequest",
      "--data", json_data,
      endpoint
    )

    unless status.success?
      message = stderr.strip
      message = "curl exited with status #{status.exitstatus}" if message.empty?
      raise CurlDownloadStrategyError, "Blackmagic API request failed: #{message}"
    end

    response = stdout.strip

    url = if response.start_with?("https://")
      response
    else
      begin
        parsed = JSON.parse(response)
      rescue JSON::ParserError
        raise CurlDownloadStrategyError,
              "Blackmagic API returned invalid JSON: #{response.empty? ? stdout.inspect : response}"
      end

      parsed["url"]
    end

    if !url.is_a?(String) || !url.start_with?("https://")
      raise CurlDownloadStrategyError,
            "Blackmagic API did not return a signed URL: #{response}"
    end

    url
  end
end

cask "blackmagic-davinci-resolve" do
  version "20.3.2"
  sha256 "f8f8e32f67f29096ee172c67146d19e95368f4e37edda2594bba1bc378161eac"

  url "https://www.blackmagicdesign.com/api/register/us/download/#{DOWNLOAD_TOKEN}",
      using: BlackmagicDownloadStrategy
  name "DaVinci Resolve"
  desc "Professional video editing, color correction, and visual effects"
  homepage "https://www.blackmagicdesign.com/products/davinciresolve"

  livecheck do
    skip "Download URL requires a signed token; livecheck cannot determine version"
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  pkg "Install Resolve #{version}.pkg"

  uninstall pkgutil: [
              "com.blackmagic-design.BlackmagicRaw_resolve",
              "com.blackmagic-design.DaVinciKeyboards",
              "com.blackmagic-design.DaVinciPanels",
              "com.blackmagic-design.FairlightPanels",
              "com.blackmagic-design.ManifestBlackmagicRawPlayer",
              "com.blackmagic-design.ManifestLite",
              "com.blackmagic-design.ManifestPanels",
            ],
            delete:  [
              "/Applications/Blackmagic Proxy Generator Lite.app",
              "/Applications/Blackmagic Proxy Generator.app",
              "/Applications/Blackmagic RAW",
              "/Applications/DaVinci Resolve",
              "/Library/Application Support/Blackmagic Design/DaVinci Control Panels",
              "/Library/Application Support/Blackmagic Design/DaVinci Resolve Panels",
              "/Library/Application Support/Blackmagic Design/DaVinci Resolve Panels/AdminUtility",
              "/Library/Frameworks/DaVinciPanelAPI.framework",
              "/Library/Frameworks/FairlightPanelAPI.framework",
              "/Library/OFX/Plugins/DaVinci Resolve Renderer.ofx.bundle",
            ]

  zap trash: [
    "~/Library/Application Support/Blackmagic Design/DaVinci Resolve",
    "~/Library/Caches/com.blackmagic-design.DaVinciResolve",
    "~/Library/Caches/DaVinci Resolve Welcome",
    "~/Library/Preferences/Blackmagic Design/DaVinci Resolve",
    "~/Library/Preferences/com.blackmagic-design.DaVinciResolve.plist",
    "~/Library/Saved Application State/com.blackmagic-design.DaVinciResolve.savedState",
  ]
end
