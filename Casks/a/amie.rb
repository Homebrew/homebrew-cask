cask "amie" do
  arch arm: "-arm64"

  version "250729.0.0"
  sha256 arm:   "fb7a9c58ea7b86c2a9a2a42b452b9bcd36e8ad5146727f51676d46e44cfb3d99",
         intel: "269339a2da925be081c1a64f8d735a1ae490f4176dd943e5183b8fdb7a0ff474"

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
