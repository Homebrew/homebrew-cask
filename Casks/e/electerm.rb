cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.103"
  sha256 arm:   "c2fef602705394c0e5daa7188d97d2d8db27e30730580aab0887bbda97525817",
         intel: "e4b3669a31a22c6375868328094edbd5e381d4768953472c7a668374a7156eff"

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
