cask "minecraftpe" do
  version "1.19.52.0"
  sha256 "e1c024bb089ec1d9715135313c91eecb9caefc8257b8ef6b65adef0d901ebdbc"

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
