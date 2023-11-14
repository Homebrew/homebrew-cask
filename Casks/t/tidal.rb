cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.35.0"
  sha256 arm:   "af8171b537c5533cfc4d3c9c2242b66b39b5e04094767db17b1ff79603215ffd",
         intel: "9133c74b557e442eef04575bc90605571591d5ec5f9b483a8fe425d23ddacb82"

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
