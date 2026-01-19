cask "earnapp" do
  version "1.600.673"
  sha256 "7a33e84c6c8d2bc5af5349a87fd70ff4dd6fcd86b0de83383e6a3d7309a4f4ce"

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
