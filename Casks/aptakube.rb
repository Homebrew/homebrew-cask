cask "aptakube" do
  version "1.5.0"
  sha256 "b315e589184df47e8beea5add4c249577070c5033145f85d8f702080c91e29fe"

  url "https://releases.aptakube.com/Aptakube_#{version}_universal.dmg"
  name "Aptakube"
  desc "Kubernetes desktop client"
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
