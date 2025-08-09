cask "nx-studio" do
  version "1.9.1,7UpYe00AzaxT07tkbSd28mJDk232"
  sha256 "db36808c3ef7bda6adeb4a50ccfa8401b210be16061f76e80f7b8dcf9edb6cf5"

  url "https://download.nikonimglib.com/archive7/#{version.csv.second}/S-NXSTDO-#{version.csv.first.split(".").map { |n| n.rjust(2, "0") }.join}MF-ALLIN-ALL___.dmg",
      verified: "download.nikonimglib.com/"
  name "NX Studio"
  desc "Nikon suite for viewing, processing, and editing photos and videos"
  homepage "https://imaging.nikon.com/imaging/lineup/software/nx_studio/"

  livecheck do
    url "https://downloadcenter.nikonimglib.com/en/products/564/NX_Studio.html"
    regex(%r{Ver\.\s+(\d+(?:\.\d+)+).+?/download/sw/(\d+)\.html?}im)
    strategy :page_match do |page, regex|
      # Identify the highest version and the ID of the download page link
      version, html_id = page.scan(regex).uniq.max_by { |match| Version.new(match[0]) }
      next if version.blank? || html_id.blank?

      # Fetch the download page for the highest version
      version_page = Homebrew::Livecheck::Strategy.page_content("https://downloadcenter.nikonimglib.com/en/download/sw/#{html_id}.html")

      # Match the redirecting URL for the macOS file
      download_redirect_url = version_page[:content]&.[](
        /controllerMac.*?href=["']?([^"' >]+?redirect\.do\?[^"' >]+?)["' >]/im, 1
      )&.gsub("&amp;", "&")
      next if download_redirect_url.blank?

      # Match the alphanumeric identifier from the download URL
      merged_headers = Homebrew::Livecheck::Strategy.page_headers(download_redirect_url).reduce(&:merge)
      directory = merged_headers["location"]&.[](%r{/archive\d*/([^/]+)/}i, 1)
      next if directory.blank?

      "#{version},#{directory}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: [
    "jp.co.nikon.MovieEditor.main",
    "jp.co.nikon.NXStudio.main",
  ]

  zap trash: [
    "/Library/Application Support/Nikon",
    "/Library/ColorSync/Profiles/Nikon",
    "/Library/Preferences/jp.co.nikon.MovieEditor.plist",
    "/Library/Preferences/jp.co.nikon.NX Studio.plist",
    "~/Library/Application Support/Nikon",
    "~/Library/Caches/jp.co.nikon.NX-Studio",
    "~/Library/Preferences/jp.co.nikon.NX-Studio.plist",
  ]
end
