cask "infoflow" do
  version "2.3.27.7,20230511224435"
  sha256 :no_check

  url "https://hi-static.cdn.bcebos.com/hi-official/infoflow_setup.dmg",
      verified: "hi-static.cdn.bcebos.com/"
  name "Baidu Hi"
  name "百度 Hi"
  name "如流"
  name "infoflow"
  desc "AI office platform"
  homepage "https://infoflow.baidu.com/"

  disable! date: "2025-01-04", because: :no_longer_meets_criteria

  app "如流.app"

  zap trash: [
    "~/Library/Caches/com.baidu.hi.mac",
    "~/Library/HTTPStorages/com.baidu.hi.mac",
    "~/Library/Preferences/com.baidu.hi.mac.plist",
    "~/Library/Saved Application State/com.baidu.hi.mac.savedState",
    "~/Library/WebKit/com.baidu.hi.mac",
  ]
end
