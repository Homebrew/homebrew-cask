cask "aptakube" do
  version "0.7.1"
  sha256 "f70c591be28e02662c00260463775cb1949f6e3c944944ccef08b51a0974d583"

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
