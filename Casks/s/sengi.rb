cask "sengi" do
  version "1.8.0"
  sha256 "dcdb16ba013326735c89c6bc1a2050194af7d570625979173f1396c21344bef7"

  url "https://github.com/NicolasConstant/sengi-electron/releases/download/v#{version}/Sengi-#{version.major_minor_patch}-mac.dmg"
  name "Sengi"
  desc "Mastodon and Pleroma desktop client"
  homepage "https://github.com/NicolasConstant/sengi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sengi.app"

  zap trash: [
    "~/Library/Application Support/sengi",
    "~/Library/Preferences/org.sengi.desktop.plist",
    "~/Library/Saved Application State/org.sengi.desktop.savedState",
  ]
end
