cask "aptakube" do
  version "0.6.1"
  sha256 "31ea6f3a8f2459b384a0c68fbe1a13460c84f26483e7df8131cfd383681f103a"

  url "https://releases.aptakube.com/Aptakube_#{version}_universal.dmg"
  name "Aptakube"
  desc "Modern, lightweight and multi-cluster Kubernetes desktop client"
  homepage "https://aptakube.com/"

  livecheck do
    url "https://releases.aptakube.com/latest.json"
    regex(/"version": "(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true

  app "Aptakube.app"

  zap trash: [
    "~/Library/Application Support/com.aptakube.Aptakube",
    "~/Library/Caches/com.aptakube.Aptakube",
    "~/Library/Logs/com.aptakube.Aptakube",
  ]
end
