cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.30.9"
  sha256 arm:   "15898099632bcfde455bb96a5e2d4a79b9fab52a195db30c8cbb1730704b68c6",
         intel: "2061ac71cddfbec06856ffcde97b4f42f59f43f15c81a9149ce4190091236841"

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
