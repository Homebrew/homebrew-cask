cask "flomo" do
  version "0.1.4"
  sha256 "4d2bd0c3b994a8dd8b9346ca3d068733c3e76017ba5bdeb230827080ae6c2e4c"

  url "https://flomo-resource.oss-cn-shanghai.aliyuncs.com/flomo_mac_v#{version}.zip",
      verified: "flomo-resource.oss-cn-shanghai.aliyuncs.com/"
  name "flomo"
  desc "Memo note taking and management app"
  homepage "https://flomoapp.com/"

  livecheck do
    url "https://flomoapp.com/api/mac/latest/"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "flomo.app"

  zap trash: [
    "~/Library/Application Scripts/com.flomoapp.mac",
    "~/Library/Containers/com.flomoapp.mac",
  ]
end
