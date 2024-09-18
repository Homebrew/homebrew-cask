cask "amie" do
  arch arm: "-arm64"

  version "240918.0.1"
  sha256 arm:   "e2aacb51994880d711d77b0e40a2e6856d64598263d36f73f24d479b2a12423a",
         intel: "d44ed9178d04490adaacc23549322f449381c50f0d430b25fee5c87bc942466f"

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
