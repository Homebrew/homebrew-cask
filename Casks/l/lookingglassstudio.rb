cask "lookingglassstudio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional intel: "intel"

  on_arm do
    version "1.7.1"
    sha256 "94cadc89029cec59c4f2d3fec94fec505ca213e540a358a255f002b842c64825"

    url "https://dhtk4bwj5r21z.cloudfront.net/HoloPlayStudio/PublicLinks/LookingGlassStudio-#{version}#{arch}.pkg",
        verified: "dhtk4bwj5r21z.cloudfront.net/HoloPlayStudio/PublicLinks/"

    pkg "LookingGlassStudio-#{version}#{arch}.pkg"

    uninstall pkgutil: "com.lookingglassfactory.holoplaystudio"
  end
  on_intel do
    version "1.6.0"
    sha256 "02551ba289a65fca766f4dbcf794410d3763a0a737e4d819415245055748147b"

    url "https://dhtk4bwj5r21z.cloudfront.net/HoloPlayStudio/PublicLinks/LookingGlassStudio-#{version}.dmg",
        verified: "dhtk4bwj5r21z.cloudfront.net/HoloPlayStudio/PublicLinks/"

    app "LookingGlassStudio.app"
  end

  name "Looking Glass Studio"
  desc "View and edit 3D image and video formats on the Looking Glass"
  homepage "https://look.glass/"

  livecheck do
    url "https://look.glass/hopstudio-#{livecheck_arch}mac"
    regex(/LookingGlassStudio[._-]v?(\d+(?:\.\d+)+)#{arch}\.(?:dmg|pkg)/i)
    strategy :header_match
  end

  zap trash: [
    "~/Library/Application Support/LookingGlassStudio",
    "~/Library/Preferences/com.lookingglassfactory.studio.plist",
  ]
end
