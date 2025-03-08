cask "amie" do
  arch arm: "-arm64"

  version "250307.0.1"
  sha256 arm:   "9612e3cc030c041b780c06d6f938c00463cb7bd129995a2153feea5d1fc74d7c",
         intel: "55b75681e1bc56a9ec2592bad63a270b96e305035ac750ec8b4d07e098eb52ed"

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
