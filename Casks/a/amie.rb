cask "amie" do
  arch arm: "-arm64"

  version "240109.0.0"
  sha256 arm:   "cafbedd9f38831a73a64f9d6294d19d04e545f6bd175266a7835b4edf2ae5275",
         intel: "34a7317845c4ec4a14ec2ff38a98bca5891e37d716883bd959af3b4f2daf8524"

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
