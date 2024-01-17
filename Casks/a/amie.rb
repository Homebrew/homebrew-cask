cask "amie" do
  arch arm: "-arm64"

  version "240116.0.0"
  sha256 arm:   "fc166d94a5d093c4868a7b5611471bd6f5bf0a0d37e3343a190d79ff86320062",
         intel: "b8fc99bfd3b84cd7e80e0e0cc50d52f17b58f62a14a3bb581ff19b143e001119"

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
