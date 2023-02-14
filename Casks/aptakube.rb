cask "aptakube" do
  version "1.2.1"
  sha256 "76b55de8bf43db18c906ded689417113318d2116fa135b84097590032c2563b1"

  url "https://releases.aptakube.com/Aptakube_#{version}_universal.dmg"
  name "Aptakube"
  desc "Modern, lightweight and multi-cluster Kubernetes desktop client"
  homepage "https://aptakube.com/"

  livecheck do
    url "https://aptakube.com/api/latest"
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
