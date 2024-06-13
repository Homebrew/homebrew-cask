cask "topaz-photo-ai" do
  version "3.0.4"
  sha256 "79caf685cfee487ac5eebafaf11ab6811590b93961cf123ca9075a29c2269da4"

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
