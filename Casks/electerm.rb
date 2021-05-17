cask "electerm" do
  version "1.12.24"
  sha256 "a40b236370f5e9e10db51bc4f5837a67609392e6f4ed2db824c273fe3bf252bc"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
