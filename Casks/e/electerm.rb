cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.26"
  sha256 arm:   "c47f76a69817621509334a35e9dbe2ec7afb4f07538f341df767460e6f6f43d7",
         intel: "9773da6dfa1046479e957d01d2db1df0fb341fdbf4080133cb75821e2f99610c"

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
