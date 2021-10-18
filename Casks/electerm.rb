cask "electerm" do
  version "1.16.21"

  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  if Hardware::CPU.intel?
    sha256 "2632ca9fab199af5df7ee57add42442d3fb7883d03c556288f9debb7f6e59e35"
  else
    sha256 "ad4cb8d7e9eb993a0fe229501ad37bef1a10a3bca8d711dbf24781846ef324c6"
  end

  app "electerm.app"

  zap trash: [
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
    "~/Library/Application Support/electerm",
  ]
end
