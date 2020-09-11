cask "kodi" do
  version "18.8-Leia"
  sha256 "0ed0c5be2ae98028ff87d431d812cd8ae004145df4fd3d5439f0cd600bfe4cb9"

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast "https://github.com/xbmc/xbmc/releases.atom"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  app "Kodi.app"

  zap trash: [
    "~/.kodi",
    "~/Library/Application Support/Kodi",
    "~/Library/Logs/kodi.log",
    "~/Library/Logs/kodi.old.log",
    "~/Library/Saved Application State/org.xbmc.kodi.savedState",
  ]
end
