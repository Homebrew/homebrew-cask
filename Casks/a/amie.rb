cask "amie" do
  arch arm: "-arm64"

  version "240524.0.0"
  sha256 arm:   "1d22ca902597d5a43b210b71332a07e262c8e17f7c4338b8f1eb6f9bf4bb10c8",
         intel: "567491aab3948e857932c5b554abea3f4955f775907400890973bc61a84a5a13"

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
