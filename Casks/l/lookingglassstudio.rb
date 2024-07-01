cask "lookingglassstudio" do
  version "1.6.0"
  sha256 "02551ba289a65fca766f4dbcf794410d3763a0a737e4d819415245055748147b"

  url "https://dhtk4bwj5r21z.cloudfront.net/HoloPlayStudio/PublicLinks/LookingGlassStudio-#{version}.dmg",
      verified: "dhtk4bwj5r21z.cloudfront.net/HoloPlayStudio/PublicLinks/"
  name "Looking Glass Studio"
  desc "View and edit 3D image and video formats on the Looking Glass"
  homepage "https://look.glass/"

  livecheck do
    url "https://look.glass/hopstudio-mac"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "LookingGlassStudio.app"

  zap trash: [
    "~/Library/Application Support/LookingGlassStudio",
    "~/Library/Preferences/com.lookingglassfactory.studio.plist",
  ]

  caveats do
    requires_rosetta
  end
end
