cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.30"
  sha256 arm:   "742406c108f117c2571847bd6f60867d972c4a4b8876ae9bb9c6aec068d376cf",
         intel: "c6e9ba952156f1c0c484b84c4b97cf7ba42c50b2bad0d12ea0ea5c26ead56a3c"

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
