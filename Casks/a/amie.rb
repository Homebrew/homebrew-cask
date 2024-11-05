cask "amie" do
  arch arm: "-arm64"

  version "241105.0.0"
  sha256 arm:   "0135abe19b685f1314cb0a81b732cd00f479eec556e0cc7589f24fc8e2aaa859",
         intel: "0d2b5eeb8b0b7f811676d5d7b2c20571fb4a5a220255d4c408f3d6489d398f9c"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
