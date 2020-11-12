cask "anydesk" do
  version "6.1.0"
  sha256 "f6459b38491f3a0bbdd01b366101391bbd8b5705c46f46879301e07014d9c38a"

  url "https://download.anydesk.com/anydesk.dmg"
  appcast "https://anydesk.com/en/downloads/mac-os"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/"

  app "AnyDesk.app"

  zap trash: [
    "~/.anydesk",
    "~/Library/Preferences/com.philandro.anydesk.plist",
  ]
end
