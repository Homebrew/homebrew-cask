cask "rockxy" do
  version "0.10.0,13"
  sha256 "a376fd1bf603e5dcb147fa065e3ce7a78f06dff75b5c8d8b1a17ba0e17d35e26"

  url "https://github.com/LocNguyenHuu/Rockxy/releases/download/v#{version.csv.first}/Rockxy-#{version.tr(",", "-")}.dmg",
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

  app "Rockxy.app"

  zap trash: [
    "~/Library/Application Support/com.amunx.rockxy",
    "~/Library/Application Support/com.amunx.rockxy.community",
    "~/Library/Preferences/com.amunx.rockxy.community.plist",
  ]
end
