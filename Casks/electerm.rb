cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.17.19"

  if Hardware::CPU.intel?
    sha256 "87de8ec164ee9b2c3e4366a4926aff8b0f04976bb6c8ef2520501be1369547df"
  else
    sha256 "4e9ee6e7c7f43518ba299f3a050397e8d059eb20b31274f7488ac3208ecd3d9f"
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
