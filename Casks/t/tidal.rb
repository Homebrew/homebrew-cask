cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.40.0"
  sha256 arm:   "f98aa088289599a41b95a68f8977803cc7af5932983725a229d76e4ac6d468d1",
         intel: "507552651b3211de69657886ae76c61313a2ee38ebcb3053754565005febff95"

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
