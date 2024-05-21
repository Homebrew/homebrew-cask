cask "tidal" do
  arch arm: "arm64", intel: "x64"

  version "2.37.8"
  sha256 arm:   "6a3bb832359965ba42c3cc0d86a7fe711e2cf17e3e8082a964c55f9cb32a85b7",
         intel: "9919d9a4d958e5b3cf2b73214de03cefa28d4ecc9915742aa14718d73fbf79d9"

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
