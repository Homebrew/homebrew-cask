cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.17.16"

  if Hardware::CPU.intel?
    sha256 "8772cc34181fccc82cd3ca7ba5998093f8c844deca4bcc85648d98007ab492b1"
  else
    sha256 "bf4c94514b4c442a17dd2f9aec2924be65f5e2ed01ba436bdc2e73f246027181"
  end

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
