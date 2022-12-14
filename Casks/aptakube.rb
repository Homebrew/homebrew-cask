cask "aptakube" do
  version "0.8.0"
  sha256 "384fb5f785db2289f8194bcac478e5d13bef662deff187684784859c956a7ea8"

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
