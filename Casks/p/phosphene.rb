cask "phosphene" do
  version "1.11.5"
  sha256 "be31c9b2aff24c42d2c57c89b869c942822fb51ee2286badefc392ff791e25a8"

  url "https://github.com/kageroumado/phosphene/releases/download/v#{version}/Phosphene-#{version}.dmg"
  name "Phosphene"
  desc "Custom video wallpapers for the desktop and lock screen"
  homepage "https://kagerou.glass/phosphene/"

  depends_on macos: :tahoe

  app "Phosphene.app"

  uninstall quit: "glass.kagerou.phosphene"

  zap trash: [
    "~/Library/Application Scripts/glass.kagerou.phosphene.extension",
    "~/Library/Caches/glass.kagerou.phosphene",
    "~/Library/Containers/glass.kagerou.phosphene.extension",
    "~/Library/Containers/glass.kagerou.phosphene.wallpaper-extension",
    "~/Library/HTTPStorages/glass.kagerou.phosphene",
    "~/Library/Preferences/glass.kagerou.phosphene.plist",
    "~/Library/Saved Application State/glass.kagerou.phosphene.savedState",
  ]
end
