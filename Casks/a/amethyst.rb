cask "amethyst" do
  on_mojave :or_older do
    version "0.16.1"
    sha256 "52663893e6547d2dd85ba15b871ec222ce4f62dc7150e5ff20d592f9b85a47c5"

    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "0.22.1"
    sha256 "b2547f1bdf160a5f3bf1d2bf686121a45c32097a46b5a3fba7c928489a39aacb"

    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip",
        verified: "github.com/ianyh/Amethyst/"

    livecheck do
      url "https://ianyh.com/amethyst/appcast.xml"
      strategy :sparkle, &:short_version
    end
  end

  name "Amethyst"
  desc "Automatic tiling window manager similar to xmonad"
  homepage "https://ianyh.com/amethyst/"

  auto_updates true
  depends_on macos: ">= :sierra"

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
