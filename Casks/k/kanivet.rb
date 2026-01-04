cask "kanivet" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "3058ce802c930fbb991cf2432ea99f741cd24591ef7e90c3962ca38eff2e72e7",
         intel: "3284523e7bd78e09334c25c8de1c97a6f6758879c1db7c91e766db78afbb0355"

  url "https://kanivet-releases.s3.eu-west-1.amazonaws.com/kanivet-#{version}-#{arch}-mac.dmg",
      verified: "kanivet-releases.s3.eu-west-1.amazonaws.com/"
  name "Kanivet"
  desc "Kubernetes cluster navigation and troubleshooting IDE"
  homepage "https://kanivet.io/"

  livecheck do
    url "https://kanivet-releases.s3.eu-west-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "kanivet.app"

  zap trash: [
    "~/Library/Application Support/kanivet",
    "~/Library/Caches/com.kanivet.app",
    "~/Library/Caches/com.kanivet.app.ShipIt",
    "~/Library/HTTPStorages/com.kanivet.app",
    "~/Library/Logs/kanivet",
    "~/Library/Preferences/com.kanivet.app.plist",
    "~/Library/Saved Application State/com.kanivet.app.savedState",
  ]
end
