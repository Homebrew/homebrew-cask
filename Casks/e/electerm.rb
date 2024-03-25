cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.41"
  sha256 arm:   "97bdf36bf5b84b1b246980350249f49438c83db9601541f0aadf0853d44fb8dd",
         intel: "6933a543aa54ec0c1f05aa2270355d2a343ceb9b9ae2c3148a91ce9304bd7f5e"

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
