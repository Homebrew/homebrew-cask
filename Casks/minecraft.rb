cask "minecraft" do
  version "795,1"
  sha256 :no_check

  url "https://launcher.mojang.com/download/Minecraft.dmg",
      verified: "mojang.com/"
  name "Minecraft"
  homepage "https://minecraft.net/"

  app "Minecraft.app"

  zap trash: [
    "~/Library/Caches/com.mojang.minecraftlauncher",
    "~/Library/Caches/com.mojang.minecraftlauncherupdater",
    "~/Library/Application Support/Minecraft Launcher",
  ]
end
