cask "feishu" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.8.7,3fa8fa84"
    sha256 "f97ec7c37cfd642d961f0a9956d30eefac3c0666690caf8beae726d3008b069d"
  end
  on_intel do
    version "8.8.7,0e918ec8"
    sha256 "4c706408a8cfc83c4071c1f734d0471e85a4cfa3dd0ee227eb7beb6368af9c4d"
  end

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.csv.second}/Feishu-darwin_#{arch}-#{version.csv.first}-signed.dmg"
  name "Feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  livecheck do
    url "https://www.feishu.cn/api/downloads"
    regex(%r{/(\h+)/Feishu[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-]signed\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("versions", "MacOS#{livecheck_arch}", "download_link")&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on :macos

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"

  zap trash: [
    "~/Library/Application Support/com.electron.lark.font_workaround",
    "~/Library/Caches/com.bytedance.lark.helper",
    "~/Library/Caches/com.electron.lark",
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/HTTPStorages/com.electron.lark.helper",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    "~/Library/Preferences/com.electron.lark.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
