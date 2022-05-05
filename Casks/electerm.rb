cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.21.40"

  if Hardware::CPU.intel?
    sha256 "c39b6e3b4a6433180690800695d878e48e85b58fff96c58f63d1e54b269d5108"
  else
    sha256 "db1810b1677289bcfc8bb9a7e5fbd08d8ed4bcacbaf7751b4113f77caf3cacf1"
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
