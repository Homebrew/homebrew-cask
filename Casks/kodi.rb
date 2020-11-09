cask "kodi" do
  version "18.9-Leia"
  sha256 "eb97807ff7d361512779368595df4af7394163817f3039c9e27ac829e83446c5"

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
