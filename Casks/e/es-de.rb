cask "es-de" do
  arch arm: "macOSApple", intel: "macOSIntel"

  on_arm do
    version "3.4.1,288889626"
    sha256 "e7b2f404a3df47f299884177d2b76cd45c2d1550807b32e7829f37a25a53776f"
  end
  on_intel do
    version "3.4.1,288889701"
    sha256 "2bab445b3efef263b54fedc4c0cbac76c477f72221130f49fc11796d0294bf6a"
  end

  url "https://gitlab.com/es-de/emulationstation-de/-/package_files/#{version.csv.second}/download",
      verified: "gitlab.com/es-de/emulationstation-de/"
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

  depends_on macos: ">= :big_sur"

  app "ES-DE.app"

  zap trash: [
    "~/ES-DE",
    "~/Library/Preferences/org.es-de.frontend.plist",
    "~/Library/Saved Application State/org.es-de.Frontend.savedState",
  ]
end
