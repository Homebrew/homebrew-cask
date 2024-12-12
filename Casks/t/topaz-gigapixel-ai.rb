cask "topaz-gigapixel-ai" do
  version "8.1.0"
  sha256 "c0d079a5853aaa4bde3b3295cea4e3d4f535464911b612246371ad6d1eacdc88"

  url "https://downloads.topazlabs.com/deploy/TopazGigapixelAI/#{version}/TopazGigapixelAI-#{version}.pkg"
  name "Topaz Gigapixel AI"
  desc "AI image upscaler"
  homepage "https://www.topazlabs.com/gigapixel-ai"

  livecheck do
    url "https://topazlabs.com/d/gigapixel/latest/mac/full"
    strategy :header_match
  end

  auto_updates true

  pkg "TopazGigapixelAI-#{version}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazGigapixelAI"

  zap trash: [
    "~/Library/Preferences/com.topaz-labs-llc.Topaz Gigapixel AI.plist",
    "~/Library/Preferences/com.topazlabs.Topaz Gigapixel AI.plist",
    "~/Library/Preferences/com.topazlabs.TopazGigapixelAI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazGigapixelAI.savedState",
  ]
end
