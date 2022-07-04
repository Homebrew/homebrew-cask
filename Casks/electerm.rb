cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.21.93"

  if Hardware::CPU.intel?
    sha256 "356f6cc5b032370c3488394e2b7b9f9fb3a0ee0a1b43239eecf65d2167a60345"
  else
    sha256 "f3e8bb0a8fb0da8b2e68a7f1414336d0664433f52328156a3fe185a33c2c176e"
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
