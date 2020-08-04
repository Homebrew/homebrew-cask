cask "anydesk" do
  version "5.6.0"
  sha256 "bc5606943ad25155651c5fe6a17562bae9088d092e1b8cf7c1bc2eaeb9cbe219"

  url "https://download.anydesk.com/anydesk.dmg"
  appcast "https://anydesk.com/en/downloads/mac-os"
  name "AnyDesk"
  homepage "https://anydesk.com/remote-desktop"

  app "AnyDesk.app"
end
