cask "bcut" do
  arch arm: "arm", intel: "intel"
  pkg_key = on_arch_conditional arm: "arm_pkg_url", intel: "package_download_url"

  on_arm do
    version "3.11.12,21611757,ebe78361425681ac197a37e7ea87b2f9"
    sha256 "3d0c401d887e846c8ff15a634b87f39870785e4ad557b10060cb5601c08d1155"
  end
  on_intel do
    version "3.11.12,21606389,30b778fb88463be565349c103904bc83"
    sha256 "5865cbd591ebcaf8a23cb88293b3569c99149f13c242082a3c94d96f9702e25c"
  end
  on_intel do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
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
