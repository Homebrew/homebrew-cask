cask "amie" do
  arch arm: "-arm64"

  version "250521.0.0"
  sha256 arm:   "4c46371982205e7806d5929269ed8238a0f77c18993499f2a2cfd1386dc002d8",
         intel: "d561fb1dcb7d9050e89d976942f714c52e98e448287e9d388611036124a3f0f3"

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
