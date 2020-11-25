cask "sloth" do
  version "3.0"
  sha256 "8d4871176a0013f425411c152a76552a91d7b95ce637737fda5c54a103ee5314"

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast "https://sveinbjorn.org/files/appcasts/SlothAppcast.xml"
  name "Sloth"
  desc "Displays all open files and sockets in use by all running processes"
  homepage "https://sveinbjorn.org/sloth"

  auto_updates true

  app "Sloth.app"

  zap trash: [
    "~/Library/Caches/org.sveinbjorn.Sloth",
    "~/Library/Preferences/org.sveinbjorn.Sloth.plist",
    "~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState",
  ]
end
