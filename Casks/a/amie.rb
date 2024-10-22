cask "amie" do
  arch arm: "-arm64"

  version "241022.1.0"
  sha256 arm:   "bf036c211fb896302883b4c53a6ac1a355414f8db3422fc7b72c9691dda9e1e4",
         intel: "cd3c73f02d9770c7975d5ee7e3096271f39649e8426b37e3d865a358c2e1fd08"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
