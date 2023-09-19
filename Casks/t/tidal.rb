cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.34.5"
  sha256 arm:   "c6d6dbda701283c0d927c9be2a992da760f371eb94bcfae76066147fdcf3bf36",
         intel: "c3b27c34da6e9745f25f938233280553e18af4cce3d00938f61dac27d1950e43"

  url "https://download.tidal.com/desktop/mac/TIDAL.#{arch}.#{version}.zip"
  name "TIDAL"
  desc "Music streaming service with high fidelity sound and hi-def video quality"
  homepage "https://tidal.com/"

  livecheck do
    url "https://download.tidal.com/desktop/mac/update-#{arch}.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true

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
