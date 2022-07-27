cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.20"

  if Hardware::CPU.intel?
    sha256 "8f9fe558ea8d9b0c64b752636c8bf5873c9f7d1db78c863b58a8f1e5a7f5dd97"
  else
    sha256 "d88ba7b4cff431373abee6600f27075797fcd29ce4053735da315d6ac01d44c1"
  end

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
