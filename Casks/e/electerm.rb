cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.60.50"
  sha256 arm:   "9b8c132ed322e1469b2901c9b798408bb70aefb869223548e3fa84e22c02ee7c",
         intel: "7d4f8c180f1eca56429c168d2e9b5fcf650c76a41544c99081eb01427f4e0c59"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
