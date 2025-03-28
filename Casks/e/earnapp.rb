cask "earnapp" do
  version "1.532.120"
  sha256 "cbabf824b2e08bcc14be2a7e2e48f984960d59eca05a52535cbe2563f18f9298"

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
