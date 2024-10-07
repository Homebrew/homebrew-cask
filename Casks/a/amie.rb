cask "amie" do
  arch arm: "-arm64"

  version "241007.1.0"
  sha256 arm:   "2823ae2c43ff6c8385450f71ff157631f047715fd480f348c0fbace8ef12cb9c",
         intel: "1b7db01d98cd237ea827bed7f324447e4f19d4f2fefdeb489ab2571eaf9d6f43"

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
