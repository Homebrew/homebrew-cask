cask "phosphene" do
  version "1.4.1"
  sha256 "70f0e85829f590df267f7be915023a49be6e4fd2abb04e36ea88d42627614e73"

  url "https://github.com/kageroumado/phosphene/releases/download/v#{version}/Phosphene-#{version}.dmg",
      verified: "github.com/kageroumado/phosphene/"
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
