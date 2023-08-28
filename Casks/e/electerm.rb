cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.29.2"
  sha256 arm:   "b42171dd7a2870c7789d169048da5fab22c77a64ad9a9261ed33dc61f639c8ad",
         intel: "226e68219e44c161b73d681fbfe565efdd21c194e5784d22989bbb7c391eced0"

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
