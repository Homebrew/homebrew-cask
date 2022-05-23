cask "pitch" do
  version "1.73.0,3651924"
  sha256 "a72ab96f429a518282242af9dd8ea80d754d0a12968dc14a4151e07ac1758bcf"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version.csv.first}-ci#{version.csv.second}.dmg"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  livecheck do
    url "https://desktop-app-builds.pitch.com/latest-mac.yml"
    regex(/Pitch[._-]v?(\d+(?:\.\d+)+).*?[._-]ci(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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
