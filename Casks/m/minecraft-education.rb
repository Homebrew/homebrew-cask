cask "minecraft-education" do
  version "1.21.93.1"
  sha256 "f371b2f56a9bcdfac87e4b42f7006d429f9d04f808a5739bfe59fdfcbbc52a48"

  url "https://downloads.minecrafteduservices.com/retailbuilds/MacOS/Minecraft_Education_#{version}.dmg",
      verified: "downloads.minecrafteduservices.com/"
  name "Minecraft Education Edition"
  desc "Educational version of Minecraft"
  homepage "https://education.minecraft.net/"

  livecheck do
    url "https://aka.ms/meeclientmacos"
    regex(/Minecraft[._-]Education[._-]?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "minecraft-edu.app", target: "Minecraft Education.app"

  zap trash: [
    "~/Library/Application Support/com.microsoft.minecraftpe",
    "~/Library/Application Support/minecraftpe",
    "~/Library/Caches/com.microsoft.minecraftpe",
    "~/Library/HTTPStorages/com.microsoft.minecraftpe",
    "~/Library/HTTPStorages/com.microsoft.minecraftpe.binarycookies",
    "~/Library/Preferences/com.microsoft.minecraftpe.plist",
    "~/Library/Saved Application State/com.microsoft.minecraftpe.savedState",
    "~/Library/WebKit/com.microsoft.minecraftpe",
  ]

  caveats do
    requires_rosetta
  end
end
