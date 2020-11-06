cask "electerm" do
  version "1.5.19"
  sha256 "0273bb4e89b8d40f48389be33422cc0f6e1b9d8d66389d378c474e8a6334a679"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
