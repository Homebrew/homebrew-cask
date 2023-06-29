cask "kodi" do
  version "20.2-Nexus"
  sha256 "58193e83e228a934b0d2edd3f1494330da2b250d5c156df60335bfef9620d77a"

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
