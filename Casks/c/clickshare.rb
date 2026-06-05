cask "clickshare" do
  version "4.50.0,15"
  sha256 "860f0eae27dd084bb837deb15e2ca57b2dd6d421b0269e8eaa46c35cb8fcb77e"

  url "https://assets.cloud.barco.com/clickshare/release/ClickShare-#{version.csv.first}-b#{version.csv.second}_mac.zip"
  name "ClickShare"
  desc "Client for wireless screen sharing with Barco conferencing systems"
  homepage "https://www.barco.com/en/product/clickshare-app"

  livecheck do
    url "https://assets.cloud.barco.com/clickshare/release/release.mac"
    strategy :json do |json|
      json["version"].to_s.sub(/-?b/, ",")
    end
  end

  auto_updates true
  depends_on :macos

  app "ClickShare.app"

  uninstall quit: "com.barco.clickshare.updater"

  zap trash: [
    "~/Library/Application Support/ClickShare",
    "~/Library/Preferences/com.barco.clickshare*.plist",
  ]

  caveats do
    requires_rosetta
  end
end
