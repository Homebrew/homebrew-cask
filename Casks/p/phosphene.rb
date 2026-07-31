cask "phosphene" do
  version "1.2.2"
  sha256 "4bb51500afd3336a59c4463421ce06a9dce23dfaf4cdd23d52fee8f89c0b890e"

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
