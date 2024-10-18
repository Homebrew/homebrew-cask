cask "topaz-photo-ai" do
  version "3.3.0"
  sha256 "cd5ff0b26120d31b67a6f0086a23e38fbf200b930ba9fb2daf7be672299d1c11"

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
