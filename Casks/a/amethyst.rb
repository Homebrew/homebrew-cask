cask "amethyst" do
  version "0.25.0"
  sha256 "cbdcab38c14e5b1cb359537faf0f274b7d77aeb2d3cfef1982866e2084880437"

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
