cask "amie" do
  arch arm: "-arm64"

  version "260212.0.1"
  sha256 arm:   "17f09c98b7330e220e6f2110ade611500bd321cf1ccd84c76a9d6d97976b4c75",
         intel: "237a2ba4ee20500f73ed1247fac4073aec87b2b117646194d23844a440dcbf96"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
