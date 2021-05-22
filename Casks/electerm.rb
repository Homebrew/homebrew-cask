cask "electerm" do
  version "1.13.1"
  sha256 "621a041f888dde3cab4a5c59a7a1150ac36149bde9321e39a4596f1a852f0739"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
