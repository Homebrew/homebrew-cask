cask "macpass" do
  version "0.8"
  sha256 "ef416f8986796c64915ea1d47b5f85f4959f629ac623bdd85547566dce737b5e"

  url "https://github.com/MacPass/MacPass/releases/download/#{version}/MacPass-#{version}.zip",
      verified: "github.com/MacPass/MacPass/"
  name "MacPass"
  desc "Open-source, KeePass-client and password manager"
  homepage "https://macpass.github.io/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "MacPass.app"

  uninstall quit: "com.hicknhacksoftware.MacPass"

  zap delete: [
    "~/Library/Application Support/MacPass",
    "~/Library/Caches/com.hicknhacksoftware.MacPass",
    "~/Library/Cookies/com.hicknhacksoftware.MacPass.binarycookies",
    "~/Library/HTTPStorages/com.hicknhacksoftware.MacPass",
    "~/Library/Preferences/com.hicknhacksoftware.MacPass.plist",
    "~/Library/Saved Application State/com.hicknhacksoftware.MacPass.savedState",
  ]
end
