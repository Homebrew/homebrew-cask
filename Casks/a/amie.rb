cask "amie" do
  arch arm: "-arm64"

  version "240508.0.0"
  sha256 arm:   "fcd99b0000ec7a3ba738520ce9b71420968139e3c842198f2963e56c76cafd27",
         intel: "c5c99aa74a8d6ac4558945c7bdc57f960ec8c68efe4555417ba7f0b52f7921ca"

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
