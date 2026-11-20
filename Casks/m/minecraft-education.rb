cask "minecraft-education" do
  version "1.26.33.0"
  sha256 "80bb151b1db4e46edc503230bc8ece25210fff94b7d73d6774559a054398a91e"

  url "https://downloads.minecrafteduservices.com/retailbuilds/MacOS/Minecraft_Education_#{version}.dmg"
  name "Minecraft Education Edition"
  desc "Educational version of Minecraft"
  homepage "https://education.minecraft.net/"

  livecheck do
    url "https://aka.ms/meeclientmacos"
    regex(/Minecraft[._-]Education[._-]?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  depends_on :macos

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "minecraft-edu.app", target: "Minecraft Education.app"

  zap trash: [
    "~/Library/Application Support/com.microsoft.minecraftpe",
    "~/Library/Application Support/minecraftpe",
    "~/Library/Caches/com.microsoft.minecraft-edu",
    "~/Library/Caches/com.microsoft.minecraftpe",
    "~/Library/HTTPStorages/com.microsoft.minecraft-edu",
    "~/Library/HTTPStorages/com.microsoft.minecraftpe",
    "~/Library/HTTPStorages/com.microsoft.minecraftpe.binarycookies",
    "~/Library/Preferences/com.microsoft.minecraft-edu.plist",
    "~/Library/Preferences/com.microsoft.minecraftpe.plist",
    "~/Library/Saved Application State/com.microsoft.minecraftpe.savedState",
    "~/Library/WebKit/com.microsoft.minecraftpe",
  ]
end
