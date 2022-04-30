cask "minecraftpe" do
  version "1.17.32.00"
  sha256 "dc8f792fe2107d4203bb795d9e05e538356e21c8145e4c919f2bbfda1a217676"

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
