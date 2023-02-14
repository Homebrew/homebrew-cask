cask "amethyst" do
  on_el_capitan :or_older do
    version "0.10.1"
    sha256 "9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7"
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra :or_newer do
    version "0.18.0"
    sha256 "dc656e6b22c48a9b3e957271aefd1d3875c6caf64aea02dfa1e857f7620ac372"
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip",
        verified: "github.com/ianyh/Amethyst/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "Amethyst"
  desc "Automatic tiling window manager similar to xmonad"
  homepage "https://ianyh.com/amethyst/"

  auto_updates true

  app "Amethyst.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*",
    "~/Library/Caches/com.amethyst.Amethyst",
    "~/Library/Cookies/com.amethyst.Amethyst.binarycookies",
    "~/Library/Preferences/com.amethyst.Amethyst.plist",
  ]
end
