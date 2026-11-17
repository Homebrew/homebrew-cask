cask "slippi-dolphin" do
  version "3.7.0"
  sha256 "0b774ef48beea8208fecfa0c2aa1458ce2295663f05cba8615b7e027fa1dace6"

  url "https://github.com/project-slippi/Ishiiruka/releases/download/v#{version}/FM-Slippi-#{version}-Mac.dmg"
  name "Slippi"
  desc "Fork of the Dolphin GameCube and Wii emulator with netplay support via Slippi"
  homepage "https://slippi.gg/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Slippi Dolphin.app"

  uninstall quit: "com.project-slippi.dolphin"

  zap trash: [
    "~/Library/Application Support/com.project-slippi.dolphin",
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/com.project-slippi.dolphin.plist",
  ]

  caveats do
    requires_rosetta
  end
end
