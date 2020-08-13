cask "anydesk" do
  version "6.0.0"
  sha256 "3e1a0e43b20259405c42da095ae1da1449e0194779407de9e15a9962b997a005"

  url "https://download.anydesk.com/anydesk.dmg"
  appcast "https://anydesk.com/en/downloads/mac-os"
  name "AnyDesk"
  homepage "https://anydesk.com/remote-desktop"

  app "AnyDesk.app"
end
