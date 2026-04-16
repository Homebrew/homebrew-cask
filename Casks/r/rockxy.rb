cask "rockxy" do
  version "0.8.0,11"
  sha256 "469c0c8c3b05b79fd346854576d0e9900bddcf88ee57140b9c3bff86a2e7b699"

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
