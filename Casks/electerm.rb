cask "electerm" do
  version "1.9.31"
  sha256 "1d6fb6d40e69712a6f396c60ccc14f6c9f19cf3e0b300a0926a15a44dc03d79f"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
