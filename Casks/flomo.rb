cask "flomo" do
  version "0.1.5"
  sha256 "d3a2c4ec8af863e724c645352fed858c4331318591ba782b8aa7e4a666669fb2"

  url "https://flomo-resource.oss-cn-shanghai.aliyuncs.com/flomo_mac_v#{version}.zip",
      verified: "flomo-resource.oss-cn-shanghai.aliyuncs.com/"
  name "flomo"
  desc "Memo note taking and management app"
  homepage "https://flomoapp.com/"

  livecheck do
    url "https://flomoapp.com/api/mac/latest/"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "flomo.app"

  zap trash: [
    "~/Library/Application Scripts/com.flomoapp.mac",
    "~/Library/Containers/com.flomoapp.mac",
  ]
end
