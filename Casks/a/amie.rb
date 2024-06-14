cask "amie" do
  arch arm: "-arm64"

  version "240614.0.0"
  sha256 arm:   "6653da5a6a2fd35a02978e24308f032782912ab6b1b94c994f52735c57f1176b",
         intel: "1b1348acbfe868108ff6a65987913f5634766990a0dc64d0ecc59942a7402e33"

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
