cask "ovice" do
  arch arm: "arm64", intel: "x64"

  version "1.14.1"
  sha256 arm:   "97017bd7144241a982a1fd555983bec17ae0652cbe76544ea291c897c0e71479",
         intel: "2d9b47409c898713406229aebb8e09e40d5798cdb12fb4dd91ae8f1958dd3ae9"

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
