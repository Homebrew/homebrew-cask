cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.8"
  sha256 arm:   "86384be84070b6ea4de869fafe5ce22042eb207c2ea185ed381400a7ace110f0",
         intel: "af009137ce7f67937b1bcbba6547b40f3312b87ade72e6f61ddfd7c50ace0669"

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
