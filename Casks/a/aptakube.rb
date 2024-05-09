cask "aptakube" do
  version "1.6.6"
  sha256 "421dc72d94891e168366234feffe178a42b85ca5ec1b161571fec8ab1dac6767"

  url "https://releases.aptakube.com/Aptakube_#{version}_universal.dmg"
  name "Aptakube"
  desc "Kubernetes desktop client"
  homepage "https://aptakube.com/"

  livecheck do
    url "https://aptakube.com/api/latest"
    regex(/"version": "(\d+(?:\.\d+)+)"/i)
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
