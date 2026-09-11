cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.43.2"
  sha256 arm:   "ff76e9548052a32a40c0d11111054d26e9e444377d66083f159261caf13de59c",
         intel: "0f19c8bb77df6c81a0422ee45352846dc68c66365dad326c0f9aba5f4dca8e88"

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
  depends_on macos: :monterey

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
