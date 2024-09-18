cask "aliworkbench" do
  version "9.57.02QNM"
  sha256 "c520c911cfbd99da753c97cfd67a7c7fcc8aaf62235601ae22c0fd16a2896829"

  url "https://download.alicdn.com/wangwang/AliworkbenchQN_(#{version}).dmg",
      verified: "download.alicdn.com/wangwang/"
  name "AliWorkBench"
  name "Qian Niu"
  name "千牛"
  desc "Merchant workbench for Taobao and Tmall sellers"
  homepage "https://work.taobao.com/"

  livecheck do
    url "https://pc.work.taobao.com/version/getOfficialVersion"
    strategy :json do |json|
      json["model"].map do |item|
        next if item["platform"] != "mac"

        item["version"]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "AliWorkBench.app"

  zap trash: [
    "~/Library/Application Support/Aliworkbench",
    "~/Library/Caches/com.taobao.Aliworkbench",
    "~/Library/HTTPStorages/com.taobao.Aliworkbench*",
    "~/Library/Preferences/com.taobao.Aliworkbench.plist",
    "~/Library/Saved Application State/com.taobao.Aliworkbench.savedState",
    "~/Library/WebKit/com.taobao.Aliworkbench",
  ]
end
