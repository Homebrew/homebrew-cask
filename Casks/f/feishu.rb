cask "feishu" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "7.44.6,91d0e7db"
    sha256 "b7022a42dce445b0cddb3f56121ab4254a9aa5267a52b72fd616a556772baf00"
  end
  on_intel do
    version "7.44.6,a289393f"
    sha256 "db79cd17cb43ae70b5a5510714ede0ea7b81589dea05cdb84f5b9a1050d188b9"
  end

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.csv.second}/Feishu-darwin_#{arch}-#{version.csv.first}-signed.dmg",
      verified: "sf3-cn.feishucdn.com/obj/ee-appcenter/"
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
  depends_on macos: ">= :high_sierra"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"

  zap trash: [
    "~/Library/Caches/com.bytedance.lark.helper",
    "~/Library/Caches/com.electron.lark",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
