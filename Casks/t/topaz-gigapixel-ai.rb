cask "topaz-gigapixel-ai" do
  version "7.0.4"
  sha256 "5357d8852f1baf8939a2b49e5f1e1bc486634b57b9fb42a65fb36bf0ff6f9a56"

  url "https://downloads.topazlabs.com/deploy/TopazGigapixelAI/#{version}/TopazGigapixelAI-#{version}.pkg"
  name "Topaz Gigapixel AI"
  desc "AI image upscaler"
  homepage "https://www.topazlabs.com/gigapixel-ai"

  livecheck do
    url "https://topazlabs.com/d/gigapixel/latest/mac/full"
    strategy :header_match
  end

  pkg "TopazGigapixelAI-#{version}.pkg"

  uninstall pkgutil: "com.topazlabs.TopazGigapixelAI"

  zap trash: [
    "~/Library/Preferences/com.topaz-labs-llc.Topaz Gigapixel AI.plist",
    "~/Library/Preferences/com.topazlabs.Topaz Gigapixel AI.plist",
    "~/Library/Preferences/com.topazlabs.TopazGigapixelAI.plist",
    "~/Library/Saved Application State/com.topazlabs.TopazGigapixelAI.savedState",
  ]
end
