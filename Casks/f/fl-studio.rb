cask "fl-studio" do
  version "24.1.2.4074"
  sha256 "9171e4d1d11311744ab84e96a591d474a80d9fe83e3054682acfdafc21bba36a"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg",
      referer:    "https://www.image-line.com/fl-studio-download/",
      user_agent: :browser
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/flstudio/"

  # The macOS link on the download page redirects to the latest dmg file but
  # livecheck is blocked by Cloudflare unless we use a `:browser` user agent
  # and set the download page as the referer. We can't set the referer in
  # livecheck yet, so this works around the issue by parsing the version from
  # the URL that the download page uses to fetch version information.
  livecheck do
    url "https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb"
    strategy :page_match do |page|
      # Extract the JSON text from the JavaScript
      match = page.match(/il_get_version_info_cb\("(.+?)"\);/i)
      next if match.blank?

      # Unescape the JSON text and parse it
      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1].gsub(/\\+"/, '"'))
      json["prod"]&.filter_map do |_id, prod|
        next unless (prod_mac = prod["mac"])
        next unless prod_mac["name"]&.include?("FL Studio")

        prod_mac["version"]
      end
    end
  end

  pkg "Install FL Studio.pkg"

  uninstall launchctl: "com.image-line.flc-install-helper-socket",
            pkgutil:   [
              "com.image-line.fl-cloud-plugins.app",
              "com.image-line.fl-cloud-plugins.launchDaemon",
              "com.Image-Line.pkg.#{version.major}ONLINE",
              "com.Image-Line.pkg.flcloud.plugins",
            ],
            delete:    "/Applications/FL Cloud Plugins.app"

  zap trash: [
    "~/Library/Caches/com.image-line.flstudio",
    "~/Library/HTTPStorages/com.image-line.flstudio",
    "~/Library/Preferences/com.image-line.flstudio.plist",
    "~/Library/Saved Application State/com.image-line.flstudio.savedState",
  ]
end
