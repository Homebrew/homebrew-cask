cask "anydesk" do
  version "6.0.2"
  sha256 "492fab19db6457fa30200436b8e882a05bd72f5a222ea79be554f60260aaca6f"

  url "https://download.anydesk.com/anydesk.dmg"
  appcast "https://anydesk.com/en/downloads/mac-os"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/remote-desktop"

  app "AnyDesk.app"
end
