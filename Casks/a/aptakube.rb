cask "aptakube" do
  version "1.18.8"
  sha256 "2560f0b2fa999c441ce8d7be682d966dd31a10edb47fc0042bb4a50b7944cd49"

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
