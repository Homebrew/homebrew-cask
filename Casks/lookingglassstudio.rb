cask "lookingglassstudio" do
  version "1.5.1"
  sha256 "8f7e337ab0aafc0b759840fa1d458f9bcf6df24d3167786a5c6148e3e4262df7"

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
