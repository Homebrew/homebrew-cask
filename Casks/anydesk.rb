cask "anydesk" do
  version "6.0.3"
  sha256 "6f58174a530eef5bbf9d62d46dd4493e6928daf824aadecbc60e54cc37200ede"

  url "https://download.anydesk.com/anydesk.dmg"
  appcast "https://anydesk.com/en/downloads/mac-os"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/remote-desktop"

  app "AnyDesk.app"

  zap trash: [
    "~/.anydesk",
    "~/Library/Preferences/com.philandro.anydesk.plist",
  ]
end
