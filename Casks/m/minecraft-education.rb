cask "minecraft-education" do
  version "1.21.03.0"
  sha256 "6cdf1ae6eebd99152fe87a5e8462bfee1a35a070aed48a418316ac2766db73cd"

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

  depends_on macos: ">= :sierra"

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
