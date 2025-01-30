cask "amie" do
  arch arm: "-arm64"

  version "250130.1.1"
  sha256 arm:   "47fba1dedeb50d79cc97291ca29d37bbc8b42aebd5611d69020cea2c4edccc97",
         intel: "747dea9deeebc2a2bf6182957b851783723dc07c8e53c4a7a40b1b3610268118"

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
