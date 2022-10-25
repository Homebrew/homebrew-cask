cask "minecraftpe" do
  version "1.18.42.0"
  sha256 "b5a3d703d597da385f29e30393ea5167c24c9b8bb959c7d416251199b33e36c6"

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
