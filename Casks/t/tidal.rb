cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.39.5"
  sha256 arm:   "4ba8a1a8e33f6069617916a94533fe143bea2ed4b42b375ba7deab88ecd6362e",
         intel: "49d8c6632b08e0527106c8140b02e72c0ebb97f611afc7404be167f4d3497a22"

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
