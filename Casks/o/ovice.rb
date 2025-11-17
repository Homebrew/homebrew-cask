cask "ovice" do
  arch arm: "arm64", intel: "x64"

  version "1.18.2"
  sha256 arm:   "a7782b9f13cb5dc3901af49811f2284097cef2d2cba7330843f4ff5c3315d3d1",
         intel: "40206995d4e712b0282284285650e7cf83cdcc8c539c38dffba75142f9393257"

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
