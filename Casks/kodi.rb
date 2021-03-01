cask "kodi" do
  version "19.0-Matrix"
  sha256 "4654b0f5a4d391f1a3781c4d122ec78d8457284e21a38a4739e85f8296840579"

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  livecheck do
    url "https://github.com/xbmc/xbmc/releases"
    strategy :git
    regex(/^(\d+(?:\.\d+)*-[a-z]+)$/i)
  end

  app "Kodi.app"

  zap trash: [
    "~/.kodi",
    "~/Library/Application Support/Kodi",
    "~/Library/Logs/kodi.log",
    "~/Library/Logs/kodi.old.log",
    "~/Library/Saved Application State/org.xbmc.kodi.savedState",
  ]
end
