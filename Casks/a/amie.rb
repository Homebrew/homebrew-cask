cask "amie" do
  arch arm: "-arm64"

  version "231130.0.1"
  sha256 arm:   "e699ff6e3d7e0a3354bd7f09c4cdb7e4f231a73a232ed7ca98f96ca8f0671c31",
         intel: "87ad3af2bdacc685ed8c6594360f704c8a0a9d5cb8a5fd9295faa3dd7ed26c68"

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
