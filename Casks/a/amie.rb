cask "amie" do
  arch arm: "-arm64"

  version "240115.0.0"
  sha256 arm:   "a05092f496f4313840d2211423ea09365bb0a2575cb2885847b44399e42e357b",
         intel: "c8be0a507bb4835691b358d58f7b81b8460914a7b84a973661be3310ee8ff315"

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
