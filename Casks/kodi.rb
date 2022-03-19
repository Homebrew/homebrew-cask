cask "kodi" do
  version "19.4-Matrix"
  sha256 "53c45f645141b44c77c052f33381560f360fc1940fc1e8065ee42928707ca707"

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  livecheck do
    url "https://github.com/xbmc/xbmc/releases"
    regex(/^(\d+(?:\.\d+)*-[a-z]+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Kodi.app"

  zap trash: [
    "~/.kodi",
    "~/Library/Application Support/Kodi",
    "~/Library/Logs/kodi.log",
    "~/Library/Logs/kodi.old.log",
    "~/Library/Saved Application State/org.xbmc.kodi.savedState",
  ]
end
