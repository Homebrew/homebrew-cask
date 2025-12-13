cask "kodi" do
  arch arm: "arm64", intel: "x86_64"

  version "21.3-Omega"
  sha256 arm:   "4ae19c4d20f41e81c8889302874179c5b8bf1d86bbb3c61b6a7e0d0f2e6cbf22",
         intel: "88f55cd3490f14a743fd5f2295242ff552b2491bc7ded9d5df6d30d585f8dfa4"

  url "https://mirrors.kodi.tv/releases/osx/#{arch}/kodi-#{version}-#{arch}.dmg"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  # The upstream website is protected by Cloudflare, which prevents us from
  # fetching the download page (https://kodi.tv/download/macos/), so we check
  # the directory listing page where the dmg files are found.
  livecheck do
    url "https://mirrors.kodi.tv/releases/osx/#{arch}/"
    regex(/href=.*?kodi[._-]v?(\d+(?:\.\d+)+[._-][^_-]+?)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Kodi.app"

  zap trash: [
    "~/.kodi",
    "~/Library/Application Support/Kodi",
    "~/Library/Logs/kodi.log",
    "~/Library/Logs/kodi.old.log",
    "~/Library/Preferences/org.xbmc.kodi.plist",
    "~/Library/Saved Application State/org.xbmc.kodi.savedState",
  ]
end
