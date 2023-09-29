cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.33.26"
  sha256 arm:   "4817e7b0ed336b99ecb88fc2e639537a6d4b128d9f50cc87daa81b681e1f67b9",
         intel: "ce5be469989b42d6095b530cdfcf5b953caeeb85752610993e5a5adafd3312d8"

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
