cask "amethyst" do
  version "0.16.0"
  sha256 "a60857ef84f426c01693101a01a439348858aa3f3d7e8d19a91b713d384967f3"

  url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip",
      verified: "github.com/ianyh/Amethyst/"

  on_el_capitan :or_older do
    version "0.10.1"
    sha256 "9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7"

    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"

    livecheck do
      skip "Legacy version for El Capitan and earlier"
    end
  end

  name "Amethyst"
  desc "Automatic tiling window manager similar to xmonad"
  homepage "https://ianyh.com/amethyst/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Amethyst.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*",
    "~/Library/Caches/com.amethyst.Amethyst",
    "~/Library/Cookies/com.amethyst.Amethyst.binarycookies",
    "~/Library/Preferences/com.amethyst.Amethyst.plist",
  ]
end
