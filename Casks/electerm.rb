cask "electerm" do
  version "1.5.13"
  sha256 "cd133f7f8e43ba5b4c0cf44d3958a669844b529c22127207d79c24e2866ef3d7"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
