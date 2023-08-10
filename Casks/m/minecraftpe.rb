cask "minecraftpe" do
  version "1.20.12.0"
  sha256 "ab8bfad3df685ff998e4784f59dea48a0d9bd5ba4e132df2f17a03582d02833e"

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

  app "minecraftpe.app"

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
end
