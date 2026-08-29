cask "amethyst" do
  version "0.24.3"
  sha256 "442d2b9fe53f8062051dd63e5d01512ed2020c78cbdbe4f93ecf30290a5b0302"

  url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip",
      verified: "github.com/ianyh/Amethyst/"
  name "Amethyst"
  desc "Automatic tiling window manager similar to xmonad"
  homepage "https://ianyh.com/amethyst/"

  livecheck do
    url "https://ianyh.com/amethyst/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

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
