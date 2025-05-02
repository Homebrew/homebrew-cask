cask "amie" do
  arch arm: "-arm64"

  version "250502.0.1"
  sha256 arm:   "a03f3fcea270dc04d10c228822e4359772fe8bb6c376ffc1efa22b3016267b8f",
         intel: "e8d51811ac76469154b2a6183ef9c6eea2ea2d854678bcc612a387a0703e9963"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
