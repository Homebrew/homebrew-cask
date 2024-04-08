cask "amie" do
  arch arm: "-arm64"

  version "240408.0.1"
  sha256 arm:   "b47d490294ed0596eb8f793f106973c274961e97562c620428aa72f3e470e932",
         intel: "ded37dc6d1b65ebf6da8757dfcfbf6e59af4612ce811c95d8ec85470370580bd"

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
