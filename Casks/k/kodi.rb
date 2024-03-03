cask "kodi" do
  version "20.5-Nexus"
  sha256 "fa574ee720b8bef991516bb4648e67aa63f94a6af5b19adaffad4a5e7931ae5a"

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
