cask "electerm" do
  version "1.12.2"
  sha256 "ecaeb903a29f2325bcda04572bc1f78d6301200d5d6329488a9e70ecb5113435"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
