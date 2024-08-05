cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.99"
  sha256 arm:   "dec166ca1d5e5dc23766f6135fb24d6149899a0f40c4a4e2260128113676ebb4",
         intel: "8511164fee0b9ba37abddc70a486b8fee946bd4f9e1e557f6dfef52664db8644"

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
