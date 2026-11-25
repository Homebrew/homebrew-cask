cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.48.0"
  sha256 arm:   "771fdb0f007d11685228212f04afe9ac03ce6a1bbc02df41cf00864191354103",
         intel: "552d1d2d2884bc88642570b30ed2034f384f6479d5e3472a2a5f52f687c135df"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tidal.desktop.sfl*",
    "~/Library/Application Support/TIDAL",
    "~/Library/Caches/com.tidal.desktop",
    "~/Library/Caches/com.tidal.desktop.ShipIt",
    "~/Library/HTTPStorages/com.tidal.desktop",
    "~/Library/Logs/TIDAL",
    "~/Library/Preferences/com.tidal.*",
    "~/Library/Saved Application State/com.tidal.desktop.savedState",
  ]
end
