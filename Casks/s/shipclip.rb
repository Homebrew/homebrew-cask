cask "shipclip" do
  version "1.3.0"
  sha256 "c7a7870be3f1a16acba723b2509d37a4a51657b62421ad9359ea4aa99bcd222a"

  url "https://api.shipclip.app/releases/ShipClip-#{version}.dmg",
      verified: "api.shipclip.app/"
  name "ShipClip"
  desc "Screen recorder with zoom-to-click and multi-track audio"
  homepage "https://shipclip.app/"

  livecheck do
    url "https://api.shipclip.app/api/releases/latest"
    strategy :json do |json|
      json.dig("latest", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ShipClip.app"

  zap trash: [
        "~/Library/Caches/digital.ligma.shipclip",
        "~/Library/HTTPStorages/digital.ligma.shipclip",
        "~/Library/Preferences/digital.ligma.shipclip.plist",
        "~/Library/Saved Application State/digital.ligma.shipclip.savedState",
      ],
      rmdir: "~/Movies/ShipClip"
end
