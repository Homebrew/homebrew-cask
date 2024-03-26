cask "amie" do
  arch arm: "-arm64"

  version "240326.0.0"
  sha256 arm:   "d62779d5e9734569ba9cb5aa5f843c399533a7d2dfef3e435c01060387893309",
         intel: "c1b52c0e716601d1ef30fb1b470a726df081bc268fae0db35e4d4307582d0ecc"

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
