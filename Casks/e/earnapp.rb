cask "earnapp" do
  version "1.586.560"
  sha256 "a5de88ff7a301ac45f2cbb7055364235f6f10f141b60765c1fe54b0b495e698f"

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
