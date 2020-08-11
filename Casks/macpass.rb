cask "macpass" do
  version "0.7.12"
  sha256 "acde7f51fd0b6529553e1e4ad4a7cbc137096bd355987bb5f4fb869f578f33be"

  # github.com/MacPass/MacPass/ was verified as official when first introduced to the cask
  url "https://github.com/MacPass/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast "https://github.com/MacPass/MacPass/releases.atom"
  name "MacPass"
  desc "Open-source, KeePass-client and password manager"
  homepage "https://macpass.github.io/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "MacPass.app"

  zap delete: [
    "~/Library/Application Support/MacPass",
    "~/Library/Caches/com.hicknhacksoftware.MacPass",
    "~/Library/Cookies/com.hicknhacksoftware.MacPass.binarycookies",
    "~/Library/Preferences/com.hicknhacksoftware.MacPass.plist",
    "~/Library/Saved Application State/com.hicknhacksoftware.MacPass.savedState",
  ]
end
