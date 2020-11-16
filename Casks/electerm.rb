cask "electerm" do
  version "1.7.18"
  sha256 "449f4c8aec6a8ec46ae8294f0f9d8402bbda97aa7fef3779905089988a513c41"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
