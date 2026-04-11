cask "rockxy-community" do
  version "0.5.0,7"
  sha256 "e1b4952be368be1432ff9366470ec7ac3efadec4f9b7577ef3e130c1e50ca4f1"

  url "https://github.com/LocNguyenHuu/Rockxy/releases/download/v0.5.0/Rockxy-Community-#{version.tr(",", "-")}.dmg",
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
