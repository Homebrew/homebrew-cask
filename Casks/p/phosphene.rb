cask "phosphene" do
  version "1.11.0"
  sha256 "eed15bce66b371a407e2bc0e9c7ab2b3356ad042106b0b83b375b23760806e5b"

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
