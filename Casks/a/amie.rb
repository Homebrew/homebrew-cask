cask "amie" do
  arch arm: "-arm64"

  version "240704.0.0"
  sha256 arm:   "0797391adf2f8914776907358992794904022b1a60df95b02e59b3a44be68939",
         intel: "2f762c405c15d4ecc34d146674e5dd04f3af6ec0c2c4ff4014c0180ce039d1c1"

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
