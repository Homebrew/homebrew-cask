cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.50.66"
  sha256 arm:   "94b1e6c939102b4b54042d12defa7353b2332f1da4e119d0e2e4297e1d4ff0ad",
         intel: "6489bf357db829360c6dca877d6f186d7cb263ad486e9a97776f26500f9a8b27"

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
