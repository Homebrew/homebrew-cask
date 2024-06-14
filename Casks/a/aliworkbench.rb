cask "aliworkbench" do
  version "9.50.00QNM"
  sha256 "41a3de60301ed56ea1b6570f805518ff1e118ecf5a85122a6899a2fc7715e114"

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
