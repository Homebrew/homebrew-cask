cask "aptakube" do
  version "1.7.16"
  sha256 "86c219a2c70aa14863355c3421726ebdb47d53d0719dd54d27ab49b6202b86d9"

  url "https://releases.aptakube.com/Aptakube_#{version}_universal.dmg"
  name "Aptakube"
  desc "Kubernetes desktop client"
  homepage "https://aptakube.com/"

  livecheck do
    url "https://aptakube.com/api/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Aptakube.app"

  zap trash: [
    "~/Library/Application Support/com.aptakube.Aptakube",
    "~/Library/Caches/com.aptakube.Aptakube",
    "~/Library/Logs/com.aptakube.Aptakube",
  ]
end
