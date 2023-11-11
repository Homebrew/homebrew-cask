cask "douyin-chat" do
  version "1.1.5,7094550955558967563,11213796"
  sha256 "70e8d195579fd878f369e955d1ef92a3d59ce5183cbb326ffbdbe64cfd9a3dea"

  url "https://lf-impc.douyinstatic.com/obj/tos-aweme-im-pc/#{version.csv.second}/releases/#{version.csv.third}/#{version.csv.first}/darwin-x64/DouyinChat.dmg",
      verified: "lf-impc.douyinstatic.com/"
  name "Douyin Chat"
  name "抖音聊天"
  desc "Chat client for Douyin"
  homepage "https://www.douyin.com/downloadpage/chat"

  livecheck do
    url "https://www.douyin.com/downloadpage/chat"
    regex(%r{tos[._-]aweme[._-]im[._-]pc/(\d+)/releases/(\d+)/(\d+(?:\.\d+)+)/darwin[._-]x64}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "抖音聊天.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bytedance.awemeim.desktop.sfl3",
    "~/Library/Caches/com.bytedance.awemeim.desktop",
    "~/Library/HTTPStorages/com.bytedance.awemeim.desktop",
    "~/Library/Preferences/com.bytedance.awemeim.desktop.plist",
    "~/Library/Saved Application State/com.bytedance.awemeim.desktop.savedState",
  ]
end
