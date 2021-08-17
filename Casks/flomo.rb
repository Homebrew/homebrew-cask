cask "flomo" do
  version "0.1.2"
  sha256 "066377a737908ce164467c67355b0be61c6cb9102fceecd4c116a0c373791394"

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
