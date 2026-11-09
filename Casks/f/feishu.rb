cask "feishu" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.5.6,5aa9e28b"
    sha256 "48a2c1084a4974d82f94d67dd6c6f501d3b40f599cccaf5b801a211d188ca44e"
  end
  on_intel do
    version "8.5.6,a21975d9"
    sha256 "e9ab881c59084b39733d82fca3a09035d6cc527a3e0442f4ca75fffb54e30c3a"
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
