cask "feishu" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.4.7,3721df38"
    sha256 "ab4c447cdba59e79b83cefa3c30ec7b48a812cbddf761de7f8969d05119130bd"
  end
  on_intel do
    version "8.4.7,b4358c5e"
    sha256 "8effe94c598d470aaf0819029cb860036bf914c8ed7e450ff9d98870d00c55df"
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
