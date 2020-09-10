cask "sloth" do
  version "2.9"
  sha256 "b8fecd3ca901012b92be681d9e20eac5deea65e184b2a5313223247ffb43d6b5"

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
