cask "slippi-dolphin" do
  version "3.6.0"
  sha256 "dc8933d0bfac51a3a6c1bdb2041c336f3751ba54af5febcb213c43ebe111b4de"

  url "https://github.com/project-slippi/Ishiiruka/releases/download/v#{version}/FM-Slippi-#{version}-Mac.dmg",
      verified: "github.com/project-slippi/Ishiiruka/"
  name "Slippi"
  desc "Fork of the Dolphin GameCube and Wii emulator with netplay support via Slippi"
  homepage "https://slippi.gg/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Slippi Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/com.project-slippi.dolphin.plist",
  ]

  caveats do
    requires_rosetta
  end
end
