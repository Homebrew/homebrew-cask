cask "pitch" do
  version "1.138.0,stable.1,5810852"
  sha256 "7ace022663c893564f9babf9e934a34bc7e15e2c3cca827eb59defb5ee3728f8"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version.csv.first}-#{version.csv.second}-ci#{version.csv.third}.dmg"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  livecheck do
    url "https://desktop-app-builds.pitch.com/latest-mac.yml"
    regex(/Pitch[._-]v?(\d+(?:\.\d+)+)-([^-]+)-ci(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.first},#{match.second},#{match.third}" }
    end
  end

  app "Pitch.app"

  zap trash: [
    "~/Library/Application Support/Pitch",
    "~/Library/Logs/Pitch",
    "~/Library/Preferences/io.pitch.pitch-macos.plist",
    "~/Library/Saved Application State/io.pitch.pitch-macos.savedState",
  ]
end
