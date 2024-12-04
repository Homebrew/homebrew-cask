cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.50.46"
  sha256 arm:   "501f7d3fb61cb337923a1364e938183bccc2e495cf42008cc79b578345a8e899",
         intel: "ee9c5e4d23ecb7c8eb6ce4a5c838a616064d0c32b95cd5f24c97740b7223decc"

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
