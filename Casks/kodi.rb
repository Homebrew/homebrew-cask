cask "kodi" do
  version "20.0-Nexus"
  sha256 "544ea624109fc6f0e8a61263d70068ded35b04c0a843234c60d980a3c5f2c27e"

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
