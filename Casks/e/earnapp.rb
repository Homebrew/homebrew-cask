cask "earnapp" do
  version "1.660.965"
  sha256 "06b5f120fe1897857ab3f61a8e0f1b1ddcfa65643af5e4162027acfa197fae96"

  url "https://cdn.earnapp.com/static/earnapp-macos-#{version}.pkg"
  name "EarnApp"
  desc "Monetize unused internet bandwidth"
  homepage "https://earnapp.com/"

  livecheck do
    url "https://client.earnapp.com/versions.json"
    strategy :json do |json|
      json["mac"]
    end
  end

  depends_on :macos

  pkg "earnapp-macos-#{version}.pkg"

  uninstall quit:    [
              "com.earnapp",
              "io.luminati.sdk.net-updater",
              "io.luminati.sdk.net-updater-launcher",
            ],
            pkgutil: "com.pkg.(null)"

  zap trash: [
    "~/Library/Caches/com.earnapp",
    "~/Library/HTTPStorages/com.earnapp",
    "~/Library/Preferences/com.earnapp.perr.plist",
    "~/Library/Preferences/com.earnapp.perr_once.plist",
    "~/Library/Preferences/com.earnapp.plist",
  ]
end
