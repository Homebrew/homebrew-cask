cask "amie" do
  arch arm: "-arm64"

  version "240515.0.0"
  sha256 arm:   "aafba46681b178d621f0fde7763345fc33f9b5b0665c7433a014101c902bd6bc",
         intel: "1bdc9ba3186b8bb87af502c0bd91c543826b3563ccfb91c7b1ad1948a2bd2bf8"

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
