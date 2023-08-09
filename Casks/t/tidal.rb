cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.34.3"
  sha256 arm:   "1ae3a880d78e1f914c3de8d95e855c5c7c3377e93d33b0f478970de7ef970dfa",
         intel: "d3dba715bf55f58f3a5a5c713699e2bc32a7c9ce4a3168e83ab672b4bef1a402"

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
