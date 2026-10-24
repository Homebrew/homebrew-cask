cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.46.0"
  sha256 arm:   "f83f47f483beedb9fa3f236fb7fae3e2431fa65dbe53ed17deeda89156ebaa98",
         intel: "89b9a6eeb7fbd9b5a6b1e8b423aa0df6d77a58196f0138623b2a48f9109b3918"

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
