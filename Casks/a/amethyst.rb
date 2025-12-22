cask "amethyst" do
  on_catalina :or_older do
    version "0.22.2"
    sha256 "43b16fadf9d349c5d3f5a406917f60e31d0ea65b1f9fc529b09292e906f75e50"

    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip",
        verified: "github.com/ianyh/Amethyst/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "0.24.1"
    sha256 "298efde2b5242f7910591a129a73756662c47a78113d482f59477131e49e7759"

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
