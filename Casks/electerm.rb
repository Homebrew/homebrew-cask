cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.50"
  sha256 arm:   "44796e6b3d8c5f899e9e59c7e2ddeaa4008eb959b5501d0745fdb75ad18aee15",
         intel: "ab7f9f718c83c8f3d592641b19e02427103919be966a99173f4656ee2301f669"

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
