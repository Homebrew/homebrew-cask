cask "earnapp" do
  version "1.541.343"
  sha256 "253733c5e1a53f97a158174fdb662ccdebb9e999855da958833542a95ff6f841"

  url "https://cdn.earnapp.com/static/earnapp-macos-#{version}.dmg"
  name "EarnApp"
  desc "Monetize unused internet bandwidth"
  homepage "https://earnapp.com/"

  livecheck do
    url "https://client.earnapp.com/versions.json"
    strategy :json do |json|
      json["mac"]
    end
  end

  depends_on macos: ">= :catalina"

  app "EarnApp.app"

  uninstall quit: [
    "com.earnapp",
    "io.luminati.sdk.net-updater",
    "io.luminati.sdk.net-updater-launcher",
  ]

  zap trash: [
    "~/Library/Caches/com.earnapp",
    "~/Library/HTTPStorages/com.earnapp",
    "~/Library/Preferences/com.earnapp.perr.plist",
    "~/Library/Preferences/com.earnapp.perr_once.plist",
    "~/Library/Preferences/com.earnapp.plist",
  ]
end
