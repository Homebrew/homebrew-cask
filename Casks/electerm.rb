cask "electerm" do
  version "1.10.39"
  sha256 "045a2e718f31df6ac12b3607c29b39c2a6a07aa2ec2bbafa4b2b3eb672bd65c8"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
