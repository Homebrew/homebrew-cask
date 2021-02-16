cask "electerm" do
  version "1.11.12"
  sha256 "763023bf6e7c8cb7c08c8347e35620461ef448a8225600c909337a15393dd605"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
