cask "es-de" do
  arch arm: "macOSApple", intel: "macOSIntel"

  on_arm do
    version "3.4.0,243196872"
    sha256 "7e9c0cc22eefc1b7749fff95cb52410d6189b59ec691448177d6fac1b12b43ac"
  end
  on_intel do
    version "3.4.0,243196947"
    sha256 "88306fc3f71ac47088950dd0ba839c194623b7197722a9a38a460150de191f6c"
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
