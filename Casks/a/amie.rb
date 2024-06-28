cask "amie" do
  arch arm: "-arm64"

  version "240628.0.0"
  sha256 arm:   "76d9a1ee0510e1c2f6854173ff24f2a6328c58aab61f2b0f294280469dfbd53f",
         intel: "3cf2478fae87a45ac9651f1ee6f6c9f279e80ba42a1c5ad3a07fbc9141307e47"

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
