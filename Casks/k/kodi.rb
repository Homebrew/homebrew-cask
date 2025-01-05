cask "kodi" do
  arch arm: "arm64", intel: "x86_64"

  version "21.1-Omega"
  sha256 arm:   "9b21477b444dddeb309fcfddbcaeeb109d9fa430c04d7a932d3a2c4c35603efc",
         intel: "f8e93515c6a1b8918ee3dc9ec87c3ffcefa70b95f4cf0673c1a4e894aca0d85d"

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

  depends_on macos: ">= :mojave"

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
