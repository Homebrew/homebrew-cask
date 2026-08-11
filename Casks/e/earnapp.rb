cask "earnapp" do
  version "1.656.948"
  sha256 "32031a19c18b4a6f1a0b2276f0a91d1c86e83c02eb526118460bc18e7f41be03"

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
