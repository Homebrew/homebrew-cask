cask "electerm" do
  version "1.11.13"
  sha256 "9fc5b4e36a55d77ac1bfedff5e2eb507270acb177b3c03aa99146c7d6dbd32a0"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
