cask "topaz-gigapixel-ai" do
  version "8.4.3"
  sha256 "afaeeebeb3f418615f878dc5d93b899cd3b1f5eb8764c4409106b1f08446fb71"

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
