cask "electerm" do
  version "1.12.21"
  sha256 "b9a1aaa22d85d65ed6689370fe219c2c8c2c0fea9910d634196e052b5b763f25"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
