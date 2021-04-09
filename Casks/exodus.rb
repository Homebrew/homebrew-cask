cask "exodus" do
  version "21.4.9"
  sha256 "e9639535e380a81be08c67db55705f7f2ff8214ba6a26ff8517e0c732fae8a05"

  url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  appcast "https://www.exodus.com/releases/"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
