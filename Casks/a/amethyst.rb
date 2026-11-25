cask "amethyst" do
  version "0.25.1"
  sha256 "ab1a290a40bb4d31bf589f74246683660789a2c988110aadc6d7e2c24a7f7835"

  url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip"
  name "Amethyst"
  desc "Automatic tiling window manager similar to xmonad"
  homepage "https://ianyh.com/amethyst/"

  livecheck do
    url "https://ianyh.com/amethyst/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "amethyst-nostr"
  depends_on macos: :monterey

  app "Amethyst.app"

  zap trash: [
    "~/Library/Application Support/Amethyst",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*",
    "~/Library/Caches/com.amethyst.Amethyst",
    "~/Library/Cookies/com.amethyst.Amethyst.binarycookies",
    "~/Library/HTTPStorages/com.amethyst.Amethyst",
    "~/Library/Preferences/com.amethyst.Amethyst.plist",
  ]
end
