cask "bcut" do
  arch arm: "arm", intel: "intel"
  pkg_key = on_arch_conditional arm: "arm_pkg_url", intel: "package_download_url"

  on_arm do
    version "3.11.16,22039053,e6ef6a84b7a28d652ee2e63ec164c57b"
    sha256 "7126b30dc79b53d69775361b48a758c6d24f128170e88b58d7882064e8b485be"
  end
  on_intel do
    version "3.11.16,22039052,714cc0b026cbaf09d57f35b541b65c0f"
    sha256 "31e1ef58105d9176bf63315b43033bc692bd4a9e8909e92a42166ae098ac96f7"
  end

  url "https://boss.hdslb.com/bcut_pc_pkg/static/#{version.csv.third}/BCUT-#{version.csv.first}-#{version.csv.second}-#{arch}.dmg",
      verified: "boss.hdslb.com/"
  name "Bcut"
  name "必剪"
  desc "Professional video editing software by Bilibili"
  homepage "https://bcut.bilibili.cn/"

  livecheck do
    url "https://member.bilibili.com/x/bcut/pc/upgrade/v2?version=0&client_type=1"
    regex(%r{/static/([^/]+)/BCUT[._-](\d+(?:\.\d+)+)[._-](\d+)[._-]#{arch}\.dmg}i)
    strategy :json do |json|
      match = json.dig("data", pkg_key)&.match(regex)
      next if match.blank? || version.blank?

      "#{match[2]},#{match[3]},#{match[1]}"
    end
  end

  auto_updates true

  app "BCUT.app"

  zap trash: [
    "~/Library/Application Support/bcut",
    "~/Library/Caches/cn.bilibili.bcut",
    "~/Library/HTTPStorages/cn.bilibili.bcut",
    "~/Library/Logs/bcut",
    "~/Library/Preferences/cn.bilibili.bcut.plist",
    "~/Library/Saved Application State/cn.bilibili.bcut.savedState",
  ]
end
