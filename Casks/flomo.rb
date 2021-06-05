cask "flomo" do
  version "0.1.2"
  sha256 "066377a737908ce164467c67355b0be61c6cb9102fceecd4c116a0c373791394"

  url "https://flomo.oss-cn-shanghai.aliyuncs.com/resource/flomo_v#{version}.zip",
      verified: "flomo.oss-cn-shanghai.aliyuncs.com/"
  name "flomo"
  desc "Memo note taking and management app"
  homepage "https://flomoapp.com/"

  livecheck do
    url "https://help.flomoapp.com/basic/app"
    strategy :page_match
    regex(/flomo_v(\d+(?:\.\d+)*)\.zip/i)
  end

  app "flomo.app"

  zap trash: [
    "~/Library/Application Scripts/com.flomoapp.mac",
    "~/Library/Containers/com.flomoapp.mac",
  ]
end
