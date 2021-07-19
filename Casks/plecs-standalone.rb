cask "plecs-standalone" do
  version "4.5.6"
  sha256 "9a1146e257198b5143fc1070b5948959e961567325fc220ff09c3a7b35e21630"

  url "https://www.plexim.com/sites/default/files/packages/plecs-standalone-#{version.dots_to_hyphens}_maci64.dmg"
  name "PLECS"
  desc "Time-domain simulation of power electronic systems"
  homepage "https://www.plexim.com/"

  livecheck do
    url "https://www.plexim.com/download/latest_version?myversion=#{version}"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "PLECS #{version.major_minor}.app"

  zap trash: [
    "~/Library/Application Support/Plexim",
    "~/Library/Preferences/com.plexim.PLECS.plist",
    "~/Library/Saved Application State/com.plexim.plecs.savedState",
  ]
end
