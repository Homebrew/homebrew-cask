cask "electerm" do
  version "1.16.3"
  sha256 "492023ad38dad77c0d29c55bb053a20912a92355224ebda5ef2d288de12015ed"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-x64.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
