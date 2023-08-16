cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.28.1"
  sha256 arm:   "549e846ada485be6ea90b6d46194c55176a908396c0610b281de8014514c6a60",
         intel: "1bdeab3834910718fb606bf3e9aecb07f7f37cb74d5e109b6fd5ad198eb91144"

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
