cask "rockxy-community" do
  version "0.7.0,9"
  sha256 "052b26f7faa1db991333e69d6209e1e7c19e4c7f7e50e60f6c67cdc17f3baa2e"

  url "https://github.com/LocNguyenHuu/Rockxy/releases/download/v#{version.csv.first}/Rockxy-Community-#{version.tr(",", "-")}.dmg",
      verified: "github.com/LocNguyenHuu/Rockxy/"
  name "Rockxy"
  desc "HTTP proxy"
  homepage "https://rockxy.io/"

  livecheck do
    url "https://github.com/LocNguyenHuu/Rockxy/releases/latest/download/manifest.json"
    strategy :json do |json|
      "#{json["appVersion"]},#{json["appBuild"]}"
    end
  end

  depends_on macos: ">= :sonoma"

  app "Rockxy Community.app"

  zap trash: [
    "~/Library/Application Support/com.amunx.rockxy",
    "~/Library/Application Support/com.amunx.rockxy.community",
    "~/Library/Preferences/com.amunx.rockxy.community.plist",
  ]
end
