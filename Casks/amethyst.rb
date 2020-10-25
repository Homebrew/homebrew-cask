cask "amethyst" do
  if MacOS.version <= :el_capitan
    version "0.10.1"
    sha256 "9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7"
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  else
    version "0.15.4"
    sha256 "a3519c308134da7c47c502051e351da81b0e04596eec15b1d2a41a2d7ddbc59a"
    # github.com/ianyh/Amethyst/ was verified as official when first introduced to the cask
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip"
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
