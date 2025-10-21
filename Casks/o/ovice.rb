cask "ovice" do
  arch arm: "arm64", intel: "x64"

  version "1.17.4"
  sha256 arm:   "8d9ca5bde5e730a1e42f3bb145decf4580702b19a52ae866263c6eebe9a30f4c",
         intel: "82c09e3b3622aa1000b9e78f44bb07feff6f0f46c4253e5eef257f766144b5bc"

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
