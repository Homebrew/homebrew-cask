cask "feishu" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "7.66.5,1ec6582e"
    sha256 "8eb1ff062b68b6045b9d231c8b4ba00ebda4c51f48a93792b9ff02523d8b3d96"
  end
  on_intel do
    version "7.66.5,1b5e2d12"
    sha256 "09668e8ddac1db245857daf0d513c3200e2951c8039a0d6e987151733b2f8822"
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
  depends_on macos: ">= :big_sur"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"

  zap trash: [
    "~/Library/Caches/com.bytedance.lark.helper",
    "~/Library/Caches/com.electron.lark",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
