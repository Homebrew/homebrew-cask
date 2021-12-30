cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.17.21"

  if Hardware::CPU.intel?
    sha256 "1659fdd87e699ba695d62dca0fc538ca1dc8b11f76a0758abb4aedcedd3162a9"
  else
    sha256 "1546b07094e9ce92c23d51b47305153e50c1835a4daa0d8da25678825e7564f0"
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
