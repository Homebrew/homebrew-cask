cask "minecraftpe" do
  version "1.18.32.0"
  sha256 "aa9d2befed54e22b56c07b021b1bebda9b2aedc873c4ddb175d8d2fe4f936dc9"

  url "https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_Edition_#{version}.dmg",
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
