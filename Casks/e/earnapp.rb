cask "earnapp" do
  version "1.561.208"
  sha256 "7d3984140ca98b77e3f8a50edf6bab193db31941f14611876b038f8468d93118"

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
