cask "macpass" do
  version "0.8.2"
  sha256 "1e130f5322329ee75ed39c921ed4ea366101cd4bfb5c495d15735db90b961a73"

  url "https://github.com/MacPass/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  name "MacPass"
  desc "Open-source, KeePass-client and password manager"
  homepage "https://macpass.github.io/"

  auto_updates true
  depends_on :macos

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
