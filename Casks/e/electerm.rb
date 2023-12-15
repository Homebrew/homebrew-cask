cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.66"
  sha256 arm:   "2eb4e8fcbd844700d6b89ae140de5d0f82c88df266bfb332adca9c9805a3e08d",
         intel: "772587e5d43bdb3adabbb8074d3ec0a066515f192692ef332e9b072d6e3ec738"

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
