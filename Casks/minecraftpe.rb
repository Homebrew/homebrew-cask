cask "minecraftpe" do
  version "1.17.32.00"
  sha256 "dc8f792fe2107d4203bb795d9e05e538356e21c8145e4c919f2bbfda1a217676"

  url "https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_Edition_#{version.dots_to_hyphens}.dmg",
      verified: "meedownloads.azureedge.net/"
  name "Minecraft Education Edition"
  desc "Educational version of Minecraft"
  homepage "https://education.minecraft.net/"

  livecheck do
    url "https://aka.ms/meeclientmacos"
    regex(/Minecraft_Education_Edition[._-]?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"][regex, 1].tr("-", ".")
    end
  end

  depends_on macos: ">= :sierra"

  app "minecraftpe.app"
end
