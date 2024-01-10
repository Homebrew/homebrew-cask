cask "kodi" do
  version "20.3-Nexus"
  sha256 "dd7bc1a64f1ba58c0d50134b0ce162f96ec250df31c8c1eedfa2297432d45f4a"

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  # The regex below assumes that the release name will always be one word
  # (e.g., Leia, Matrix, Nexus, etc.).
  livecheck do
    url "https://kodi.tv/download/macos/"
    regex(/href=.*?kodi[._-]v?(\d+(?:\.\d+)+[._-][^-]+?)[._-][^-]+?\.dmg/i)
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
