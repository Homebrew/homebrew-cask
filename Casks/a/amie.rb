cask "amie" do
  arch arm: "-arm64"

  version "240207.0.0"
  sha256 arm:   "847c99dc6d220b40086ce8a2bb5f3fc4b029693b74917abbc26b73e62f3eab6d",
         intel: "b8a682f7ad8f6bf2018ba05d4824cc96bdae9931c8824d132a04666da9a2634d"

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
