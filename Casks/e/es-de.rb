cask "es-de" do
  arch arm: "macOSApple", intel: "macOSIntel"

  on_arm do
    version "3.3.0,210210122"
    sha256 "1d3c9a03b1062167458d246ea2553a0d4de9baae63b1ed336f15816a3b73bd36"
  end
  on_intel do
    version "3.3.0,212641229"
    sha256 "7ea01396939107041e5803f36aa758081e43cffe91c72613cfd85b2bc4789338"
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
