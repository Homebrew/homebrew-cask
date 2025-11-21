cask "aliworkbench" do
  version "9.90.00QNM"
  sha256 "291787a5989e0c5240d5d8ce0123182b53679b657620ef4e8cc28d2a22f0f511"

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
      json["model"]&.map do |item|
        next if item["platform"] != "mac"

        item["version"]&.strip
      end
    end
  end

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
