cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.29.4"
  sha256 arm:   "c86ac482f4c1f835b2a14d3fcd603c7aaa79d037f55b8ee8a0a33d28e723e61b",
         intel: "0dff67a639c5d1f32bf50bf032b3f3e96a540b14c61295468e402fc2d10e9625"

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
