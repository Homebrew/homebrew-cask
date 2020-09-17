cask "anydesk" do
  version "6.0.1"
  sha256 "bcdd0f8c3a42b291f23aac43e3309a5a6b8d5016d7c220e8d306ab40b802eb02"

  url "https://download.anydesk.com/anydesk.dmg"
  appcast "https://anydesk.com/en/downloads/mac-os"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/remote-desktop"

  app "AnyDesk.app"
end
