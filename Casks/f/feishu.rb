cask "feishu" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "7.52.7,4f91a1ee"
    sha256 "dcf3cbbb6a05ceb5a64a3813f69c9480868d794b35ecc6595bb67b98b2b1e9e3"
  end
  on_intel do
    version "7.52.7,6aa95285"
    sha256 "f074948a99f64d94cc2bffc3c28bcd523ca7fbd3c3cc40c92314e5dcbd6e6fbd"
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

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"

  zap trash: [
    "~/Library/Caches/com.bytedance.lark.helper",
    "~/Library/Caches/com.electron.lark",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
