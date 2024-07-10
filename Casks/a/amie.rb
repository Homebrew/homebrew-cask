cask "amie" do
  arch arm: "-arm64"

  version "240710.0.0"
  sha256 arm:   "e887a7666df79a5ccf6679be9a94bd924dfb061dda3fbf582ff63ebf1767ab52",
         intel: "961eb6ae5eab70da5ac93e6e8b8c8034823908f84ada049593f3470295819015"

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
