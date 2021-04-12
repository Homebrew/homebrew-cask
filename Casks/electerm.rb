cask "electerm" do
  version "1.12.15"
  sha256 "faef6bd1cc4f87e5d8107f4ecc87b9a7e825293e796d6e6833f5778b55f9dd4f"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
