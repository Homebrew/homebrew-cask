cask "es-de" do
  arch arm: "macOSApple", intel: "macOSIntel"

  on_arm do
    version "3.5.0,357717468"
    sha256 "060bd289fa17f8f07bac2eb688698047f7be79b80495983f08580b5f1a046e1e"
  end
  on_intel do
    version "3.5.0,357717755"
    sha256 "36418337e9f499506ee4fed6f8c880665abfb24eda1fde0b23f224f0ca69cd39"
  end

  url "https://gitlab.com/es-de/emulationstation-de/-/package_files/#{version.csv.second}/download"
  name "ES-DE"
  name "EmulationStation Desktop Edition"
  desc "Frontend for browsing and launching games from your multi-platform collection"
  homepage "https://www.es-de.org/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/18817634/repository/files/latest_release.json/raw?ref=master"
    regex(%r{/package_files/(\d+)/download}i)
    strategy :json do |json, regex|
      version = json.dig("stable", "version")
      next if version.blank?

      download_url = json.dig("stable", "packages")
                         &.find { |pkg| pkg["name"] == arch }
                         &.dig("url")
      next if download_url.blank?

      download_id = download_url[regex, 1]
      next if download_id.blank?

      "#{version},#{download_id}"
    end
  end

  depends_on :macos

  app "ES-DE.app"

  uninstall quit: version.csv.first.to_s

  zap trash: [
    "~/ES-DE",
    "~/Library/Preferences/org.es-de.frontend.plist",
    "~/Library/Saved Application State/org.es-de.Frontend.savedState",
  ]
end
