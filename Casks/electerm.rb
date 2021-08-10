cask "electerm" do
  version "1.15.3"
  sha256 "5b074a94902045ab0bd85ed88619ece9c251c73b3c221c74cd9275081a77674b"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-x64.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
