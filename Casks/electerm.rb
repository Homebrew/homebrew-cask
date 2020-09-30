cask "electerm" do
  version "1.5.7"
  sha256 "dd2bd11075471cbd8095d7d39631fda2d9937bbaa8185cd4eeb62f5864038c79"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
