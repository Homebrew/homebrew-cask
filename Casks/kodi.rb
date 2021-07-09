cask "kodi" do
  version "19.1-Matrix"
  sha256 "87cf921712aeed5d5230b468425b777ef550a902d67ec5cbce1c744ba2cd369d"

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
