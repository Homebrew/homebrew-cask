cask "slippi-dolphin" do
  version "3.5.1"
  sha256 "65900d7e742d68661351bd935026bd2fc30275a6c2e5e2c6370a3aa3dd9c0f58"

  url "https://github.com/project-slippi/Ishiiruka/releases/download/v#{version}/FM-Slippi-#{version}-Mac.dmg",
      verified: "github.com/project-slippi/Ishiiruka/"
  name "Slippi"
  desc "Fork of the Dolphin GameCube and Wii emulator with netplay support via Slippi"
  homepage "https://slippi.gg/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Slippi Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/com.project-slippi.dolphin.plist",
  ]

  caveats do
    requires_rosetta
  end
end
