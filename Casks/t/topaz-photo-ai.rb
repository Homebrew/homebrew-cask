cask "topaz-photo-ai" do
  version "3.0.2"
  sha256 "0807657e1fa753ff0fe182d03191f86bc6f7b871a38ca6cfa0be4fa069bfd5b4"

  url "https://downloads.topazlabs.com/deploy/TopazPhotoAI/#{version}/TopazPhotoAI-#{version}.pkg"
  name "Topaz Photo AI"
  desc "AI image enhancer"
  homepage "https://www.topazlabs.com/photo-ai"

  livecheck do
    url "https://topazlabs.com/d/photo/latest/mac/full"
    strategy :header_match
  end

  pkg "TopazPhotoAI-#{version}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazPhotoAI"

  zap trash: [
    "~/Library/Preferences/com.topaz-labs-llc.Topaz Photo AI.plist",
    "~/Library/Preferences/com.topazlabs.Topaz Photo AI.plist",
    "~/Library/Preferences/com.topazlabs.TopazPhotoAI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazPhotoAI.savedState",
  ]
end
