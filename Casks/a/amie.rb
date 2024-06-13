cask "amie" do
  arch arm: "-arm64"

  version "240613.0.0"
  sha256 arm:   "7b107eff72e5ad8d10eff3709f63a7a7d0d028f5b8de6d1ce665ca6c0f9652c7",
         intel: "af18dcab8492d2617413eb79556a4b24d18411ef5b2f17e4ca552776011b80fe"

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
