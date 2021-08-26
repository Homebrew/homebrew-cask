cask "flomo" do
  version "0.1.3"
  sha256 "4fce120cf75390968dc76469b23759722819a18ba4e2b3e996dca6020b4bf48c"

  url "https://flomo-resource.oss-cn-shanghai.aliyuncs.com/flomo_mac_v#{version}.zip",
      verified: "flomo-resource.oss-cn-shanghai.aliyuncs.com/"
  name "flomo"
  desc "Memo note taking and management app"
  homepage "https://flomoapp.com/"

  livecheck do
    url "https://help.flomoapp.com/basic/app"
    regex(%r{/flomo[._-]mac[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :catalina"

  app "flomo.app"

  zap trash: [
    "~/Library/Application Scripts/com.flomoapp.mac",
    "~/Library/Containers/com.flomoapp.mac",
  ]
end
