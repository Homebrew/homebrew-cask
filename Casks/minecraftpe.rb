cask "minecraftpe" do
  version "1.18.45.0"
  sha256 "43a41d05446ddee83160dec0a43b1d2d9c5f588bb26d3896dbce254e41c689ff"

  url "https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_#{version}.dmg",
      verified: "meedownloads.azureedge.net/"
  name "Minecraft Education Edition"
  desc "Educational version of Minecraft"
  homepage "https://education.minecraft.net/"

  livecheck do
    url "https://aka.ms/meeclientmacos"
    regex(/Minecraft[._-]Education[._-]?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "minecraftpe.app"
end
