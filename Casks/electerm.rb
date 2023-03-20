cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.22"
  sha256 arm:   "81e9c66cbd37a0c7d529e3b41eda5e72549a424c81593e7ab349868fe10af0dd",
         intel: "67d8f285340454c698b527d8e98e774badb09e0154f5a7fbfc681b5fb3deeba5"

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
