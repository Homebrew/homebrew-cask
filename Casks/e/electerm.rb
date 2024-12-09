cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.50.65"
  sha256 arm:   "68988601712fdb3e444cce0f96069f5a52138d25306da5c670f842eb7a737080",
         intel: "41db251b78b8a4931d906a8c836c7c7df7056c9bff109a249e43b635437148b0"

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
