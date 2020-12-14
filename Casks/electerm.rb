cask "electerm" do
  version "1.10.13"
  sha256 "4cbbb52ef88e21ff8f7ce23628c1d314c91746be7372979318e78165d9f69242"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
