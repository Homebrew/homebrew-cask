cask "topaz-photo-ai" do
  version "3.1.0"
  sha256 "8c4a5677278f098bc2af1f91847042fea96c3a79cf41bb8d77b163343dccd890"

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
