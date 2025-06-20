cask "douyin" do
  version "6.1.0,7044145585217083655,163670668"
  sha256 "03980548f806f8a54c844ea524fd34fa2515e6514cf9ad06e43a6515d901056e"

  url "https://www.douyin.com/download/pc/obj/douyin-pc-web//douyin-pc-client/#{version.csv.second}/releases/#{version.csv.third}/#{version.csv.first}/darwin-universal/douyin-v#{version.csv.first}-darwin-universal.dmg"
  name "Douyin"
  name "抖音"
  desc "Social software for creating music short videos"
  homepage "https://www.douyin.com/"

  livecheck do
    url "https://www.douyin.com/downloadpage"
    regex(%r{douyin[._-]pc[._-]client/(\d+)/releases/(\d+)/(\d+(?:\.\d+)+)/darwin[._-]universal}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "抖音.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bytedance.douyin.desktop.*",
        "~/Library/Caches/com.bytedance.douyin.desktop",
        "~/Library/HTTPStorages/com.bytedance.douyin.desktop",
        "~/Library/Logs/douyin",
        "~/Library/Preferences/com.bytedance.douyin.desktop.plist",
        "~/Library/Saved Application State/com.bytedance.douyin.desktop.savedState",
      ],
      rmdir: "~/Library/Application Support/抖音"
end
