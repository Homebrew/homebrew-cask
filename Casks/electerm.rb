cask "electerm" do
  version "1.11.1"
  sha256 "7a0567fe9f1de38b2e3ea88ab2bfc2d0c65b4ed6b16d7e0aa0791ed739f4257f"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
