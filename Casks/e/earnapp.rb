cask "earnapp" do
  version "1.597.201"
  sha256 "6be502f3df0bf53b5af870e3c88fc6422a50c7ef0b9313515797490ada856c55"

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
