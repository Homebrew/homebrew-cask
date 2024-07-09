cask "slippi-dolphin" do
  version "3.4.1"
  sha256 "56ee2d69d4abd2dbbc6661c5de88cd635d49886df11a1709585c05f40944945a"

  url "https://github.com/project-slippi/Ishiiruka/releases/download/v#{version}/FM-Slippi-#{version}-Mac.dmg",
      verified: "github.com/project-slippi/Ishiiruka/"
  name "Slippi"
  desc "Fork of the Dolphin GameCube and Wii emulator with netplay support via Slippi"
  homepage "https://slippi.gg/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Slippi Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/com.project-slippi.dolphin.plist",
  ]

  caveats do
    requires_rosetta
  end
end
