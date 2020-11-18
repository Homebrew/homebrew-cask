cask "electerm" do
  version "1.8.3"
  sha256 "108ba9b999e44e52d5efac067acce8bae9ca004819e744315d18a25831dab7cd"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
