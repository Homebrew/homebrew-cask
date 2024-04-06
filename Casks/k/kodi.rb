cask "kodi" do
  arch arm: "arm64", intel: "x86_64"

  version "21.0-Omega"
  sha256 arm:   "d01b94b4685d0feb5d377e624ae071d814032c7e02ee987ed288cc72314f0955",
         intel: "61913e8b163f371697ef8f357792d2ea16d862c0a5620e1fd94a6ae9fffe8e7e"

  url "https://mirrors.kodi.tv/releases/osx/#{arch}/kodi-#{version}-#{arch}.dmg"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  # The regex below assumes that the release name will always be one word
  # (e.g., Leia, Matrix, Nexus, Omega, etc.).
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
    "~/Library/Preferences/org.xbmc.kodi.plist",
    "~/Library/Saved Application State/org.xbmc.kodi.savedState",
  ]
end
