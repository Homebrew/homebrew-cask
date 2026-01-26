cask "ovice" do
  arch arm: "arm64", intel: "x64"

  version "1.18.8"
  sha256 arm:   "347fc2848b5da27844633178b7ae274ea69be85c534ce94ab17d4dcf1399fbf2",
         intel: "cf20df46bfba5216227e5a2a429366365d8eda272683a4f5f12ed719b5b00dc2"

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
