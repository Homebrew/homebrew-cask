cask "ovice" do
  arch arm: "arm64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "ddb26895da88776652b59b024505cff27ced1c9ead8fc7f2b5c8bb0580fb5882",
         intel: "da31d2f989ae3c76a2d0ac49a5429e037c3521375143067086ba0d7c023ed453"

  url "https://assets.ovice.io/desktop-apps/staging/darwin/#{arch}/ovice-darwin-#{arch}-#{version}.zip",
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

  depends_on macos: ">= :catalina"

  app "ovice.app"

  zap trash: [
    "~/Library/Application Support/ovice",
    "~/Library/Caches/com.ovice.desktop.prod",
    "~/Library/Caches/com.ovice.desktop.prod.ShipIt",
    "~/Library/HTTPStorages/com.ovice.desktop.prod",
    "~/Library/Preferences/com.ovice.desktop.prod.plist",
  ]
end
