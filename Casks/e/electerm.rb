cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.88"
  sha256 arm:   "7a7996a7af11632e3bdb3783e51d7bf0971010c04be552ae1cdf34d4e6ccf639",
         intel: "d86f6ebbb69959e9a26a2e7046564344e5dd8ed771d1c6c6fac39a5e53c60083"

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
