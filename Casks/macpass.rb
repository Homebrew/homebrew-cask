cask "macpass" do
  version "0.8.1"
  sha256 "2d0d3bdc945b42c0c1fe79b1eb74e5969b5f768ffc56aa286d73d3492873b173"

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
