cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.126"
  sha256 arm:   "168da26b7cc6e441d60bdf5187b901164c054855eb13a34498e929fc258134b8",
         intel: "85840470c13ba8769c02fbadd578e7222b764de716086e43cb2125d04315bd10"

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
