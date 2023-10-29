cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.38"
  sha256 arm:   "4179d8efc3a9afd7488d5c9d3317b5246858ac8cccb8e2c8314da661bbed2283",
         intel: "fef9349dac778102f2d0d18eb1236d2cc06c6b8f97c22d4efae56c80da8e14ef"

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
