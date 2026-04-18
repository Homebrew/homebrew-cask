cask "rockxy" do
  version "0.9.0,12"
  sha256 "c4134ba723b9518727455f751a8f1acad199c6fb2227af56d7ac92dcbd36ffc6"

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
