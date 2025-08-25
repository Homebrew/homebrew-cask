cask "amie" do
  arch arm: "-arm64"

  version "250825.0.0"
  sha256 arm:   "46433b4994fe8a9ede824de2359ba908d747ba346914df7f2a183a58ad585805",
         intel: "6fcd9891e318d47aadd81a9a775069b87a897db87c80ffc27ca7ce1d1f0f2487"

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
