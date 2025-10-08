cask "ovice" do
  arch arm: "arm64", intel: "x64"

  version "1.16.3"
  sha256 arm:   "6e9e34f5381c5ae3b2ef9a6a92f3a1e36e822ff17bd1ac103e29b0295fe33bdc",
         intel: "747d6f6788bb5f7679164abef82a2206bd80ca010aa108e4718eb0d836cf9131"

  url "https://assets.ovice.io/desktop-apps/stable/darwin/#{arch}/ovice-darwin-#{arch}-#{version}.zip",
      verified: "assets.ovice.io/desktop-apps/"
  name "ovice"
  desc "Virtual workplace for distributed teams"
  homepage "https://www.ovice.com/"

  livecheck do
    url "https://assets.ovice.io/desktop-apps/stable/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "ovice.app"

  zap trash: [
    "~/Library/Application Support/ovice",
    "~/Library/Caches/com.ovice.desktop.prod",
    "~/Library/Caches/com.ovice.desktop.prod.ShipIt",
    "~/Library/HTTPStorages/com.ovice.desktop.prod",
    "~/Library/Preferences/com.ovice.desktop.prod.plist",
  ]
end
