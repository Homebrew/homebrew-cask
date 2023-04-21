cask "aptakube" do
  version "1.4.1"
  sha256 "aeba095ff045106e700aaa80cad53f248b070226b629111b73bfa5152b9c0a7a"

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
