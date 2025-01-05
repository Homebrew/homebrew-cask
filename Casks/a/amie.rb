cask "amie" do
  arch arm: "-arm64"

  version "241205.0.2"
  sha256 arm:   "4ad4eb9e6f11eb792611264d40ec48792b446965f850d7bfeb9ac139e6b90b1f",
         intel: "74e78434d8b741425fa2b2f77428a831da5a27d8b3f0fd6c6e7faba4f9fe70bd"

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
