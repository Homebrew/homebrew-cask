cask "slippi-dolphin" do
  version "2.2.5"
  sha256 "1106626ec4531b5cc3906a91f6f72605cad63eebed47fa1b348a53698c5492d5"

  url "https://github.com/project-slippi/Ishiiruka/releases/download/v#{version}/FM-Slippi-#{version}-Mac.dmg",
      verified: "github.com/project-slippi/Ishiiruka/"
  appcast "https://github.com/project-slippi/Ishiiruka/releases.atom"
  name "Slippi"
  desc "Dolphin fork with Slippi support"
  homepage "https://slippi.gg/"

  app "Slippi Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/com.project-slippi.dolphin.plist",
  ]
end
