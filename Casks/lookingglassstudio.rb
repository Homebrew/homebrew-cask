cask "lookingglassstudio" do
  version "1.5.0"
  sha256 "6d6f4422b0872702ff170862f897da83ae18629b77e2f0ced49a4070822ccef4"

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
end
