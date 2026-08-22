cask "phosphene" do
  version "1.4"
  sha256 "b5a083db6f0b4be567efa4ad535230ff4d5fd61f2c4e9dd38603a5d9e9ae0bbc"

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
