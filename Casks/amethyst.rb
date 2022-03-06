cask "amethyst" do
  if MacOS.version <= :el_capitan
    version "0.10.1"
    sha256 "9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7"
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  else
    version "0.15.6"
    sha256 "e459b9ce81078b8251549168c0d8473c069a14e817f3a8f386ec84b0f220955a"
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip",
        verified: "github.com/ianyh/Amethyst/"
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
