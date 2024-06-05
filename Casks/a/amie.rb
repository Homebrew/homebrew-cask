cask "amie" do
  arch arm: "-arm64"

  version "240605.0.0"
  sha256 arm:   "92af8b5692efaaf0c1f1ad0420568e3f78922c5e0ea77247b2c168d75f9aafc1",
         intel: "816763d9afacc161b48dcb8ffaee17886e9d54becb1e4888a530df1553a4862c"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
