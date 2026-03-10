cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.41.3"
  sha256 arm:   "74ed472ddc243d9c784f6066150a5e6e5d68172a1cf4633fd0b7c3f7784ee373",
         intel: "8e1e42b149cb77bb0803a8ab6c8d048d40925e2bc2978b72214247fe190efe38"

  url "https://download.tidal.com/desktop/mac/TIDAL.#{arch}.#{version}.zip"
  name "TIDAL"
  desc "Music streaming service with high fidelity sound and hi-def video quality"
  # The main website is inaccessible due to using a verification system.
  homepage "https://support.tidal.com/hc/en-us"

  livecheck do
    url "https://download.tidal.com/desktop/mac/update-#{arch}.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "TIDAL.app"

  zap trash: [
    "~/Library/Application Support/TIDAL",
    "~/Library/Caches/com.tidal.desktop",
    "~/Library/Caches/com.tidal.desktop.ShipIt",
    "~/Library/Logs/TIDAL",
    "~/Library/Preferences/com.tidal.*",
    "~/Library/Saved Application State/com.tidal.desktop.savedState",
  ]
end
