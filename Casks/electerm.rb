cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.40"
  sha256 arm:   "feb21641ef1235ee9775369b37746a7a2709f20dc5785f22825a9cf5148f4373",
         intel: "48171cd8d843c576530551aca38e22a5501fa747864c6d3227ba1a58b94d989e"

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
