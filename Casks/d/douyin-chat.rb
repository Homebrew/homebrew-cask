cask "douyin-chat" do
  version "1.1.23,12264749"
  sha256 "b4bbe9c052babcba04c3c647cf9062a57690394a2f9aebb95996e11acdaa6069"

  url "https://lf-impc.douyinstatic.com/obj/tos-aweme-im-pc/7094550955558967563/releases/#{version.csv.second}/#{version.csv.first}/darwin-x64/DouyinChat.dmg",
      verified: "lf-impc.douyinstatic.com/obj/tos-aweme-im-pc/"
  name "Douyin Chat"
  name "抖音聊天"
  desc "Chat client for Douyin"
  homepage "https://www.douyin.com/downloadpage/chat"

  livecheck do
    url "https://tron.jiyunhudong.com/api/sdk/check_update?pid=7094550955558967563&uid=2386374454157337&branch=release&buildId=0"
    strategy :json do |json|
      version = json.dig("data", "manifest", "darwin", "version")
      build = json.dig("data", "buildId")
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "抖音聊天.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bytedance.awemeim.desktop.sfl*",
    "~/Library/Caches/com.bytedance.awemeim.desktop",
    "~/Library/HTTPStorages/com.bytedance.awemeim.desktop",
    "~/Library/Preferences/com.bytedance.awemeim.desktop.plist",
    "~/Library/Saved Application State/com.bytedance.awemeim.desktop.savedState",
  ]
end
