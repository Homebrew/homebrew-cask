cask "topaz-photo-ai" do
  version "3.5.0"
  sha256 "b093e2763428a3071d7479616cc32df4264d59be8436b400888bd333e53b92ad"

  url "https://downloads.topazlabs.com/deploy/TopazPhotoAI/#{version}/TopazPhotoAI-#{version}.pkg"
  name "Topaz Photo AI"
  desc "AI image enhancer"
  homepage "https://www.topazlabs.com/photo-ai"

  livecheck do
    url "https://topazlabs.com/d/photo/latest/mac/full"
    strategy :header_match
  end

  auto_updates true

  pkg "TopazPhotoAI-#{version}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazPhotoAI"

  zap trash: [
    "~/Library/Preferences/com.topaz-labs-llc.Topaz Photo AI.plist",
    "~/Library/Preferences/com.topazlabs.Topaz Photo AI.plist",
    "~/Library/Preferences/com.topazlabs.TopazPhotoAI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazPhotoAI.savedState",
  ]
end
