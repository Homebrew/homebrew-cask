cask "amethyst" do
  if MacOS.version <= :el_capitan
    version "0.10.1"
    sha256 "9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7"
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  else
    version "0.15.4b"
    sha256 "f04574fdf67af2b505fc754d60866c0f7366029d509a943f67a658ab114358a7"
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip",
        verified: "github.com/ianyh/Amethyst/"
  end

  appcast "https://github.com/ianyh/Amethyst/releases.atom"
  name "Amethyst"
  desc "Automatic tiling window manager similar to xmonad"
  homepage "https://ianyh.com/amethyst/"

  auto_updates true

  app "Amethyst.app"

  zap trash: [
    "~/Library/Caches/com.amethyst.Amethyst",
    "~/Library/Preferences/com.amethyst.Amethyst.plist",
    "~/Library/Cookies/com.amethyst.Amethyst.binarycookies",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*",
  ]
end
