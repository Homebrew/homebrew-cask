cask "minecraftpe" do
  version "1.14.50.0"
  sha256 "5e17565b6bb989c2deb90c90e3225e80f521aa1bb1923cf7574ee1e0ef1cac1f"

  url "https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_Edition_#{version.dots_to_hyphens}.dmg",
      verified: "meedownloads.azureedge.net/"
  appcast "https://educommunity.minecraft.net/hc/en-us/categories/360003907132",
          must_contain: version.chomp(".0")
  name "Minecraft Education Edition"
  desc "Educational version of Minecraft"
  homepage "https://education.minecraft.net/"

  depends_on macos: ">= :sierra"

  app "minecraftpe.app"
end
