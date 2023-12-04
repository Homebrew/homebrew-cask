cask "amie" do
  arch arm: "-arm64"

  version "231204.0.0"
  sha256 arm:   "1f86c90d90ea2aa3c8704351b28a26f3c1110988f1c6be786c9ae0fe9d5e63f5",
         intel: "a2e820ea45323b7fec712057337b13ebc4ad2761d58b162d8e75f101a0ee8bc7"

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
