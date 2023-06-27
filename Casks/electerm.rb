cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.26.2"
  sha256 arm:   "8c0962171ac4ec57f2e48d5fcbbaa0dca0903219c00caabef53b0b3745f766a6",
         intel: "b6b20eea80f9508af860ab3fefd0c624ed563a11473133b6cedd1e35e7ead6bd"

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
