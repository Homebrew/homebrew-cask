cask "aptakube" do
  version "1.19.6"
  sha256 "1cc2f142766c5d152347f3b438455fbca553672cbd5fdff7399ea3d725b220a0"

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
  depends_on macos: :big_sur

  app "Aptakube.app"

  zap trash: [
    "~/Library/Application Support/com.aptakube.Aptakube",
    "~/Library/Caches/com.aptakube.Aptakube",
    "~/Library/Logs/com.aptakube.Aptakube",
    "~/Library/WebKit/com.aptakube.Aptakube",
  ]
end
