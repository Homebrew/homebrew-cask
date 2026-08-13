cask "amie" do
  arch arm: "-arm64"

  version "260813.0.0"
  sha256 arm:   "867e41fab8dbfe498ea395e1338195b051ec8adc2cb46cfa4857c70c8458f11c",
         intel: "658ffffe5111e250120b8690656988eaed5607322eef8237206201ead2bc639d"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: :monterey

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
