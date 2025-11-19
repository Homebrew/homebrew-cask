cask "bcut" do
  arch arm: "arm", intel: "intel"
  pkg_key = on_arch_conditional arm: "arm_pkg_url", intel: "package_download_url"

  on_arm do
    version "3.11.13,21669956,90c55123a1b1881b18375a302b20bd4d"
    sha256 "3b53a44cc519c161fa3d70b5be927658dd157eb05824eb98d81dd91be1d33d99"
  end
  on_intel do
    version "3.11.13,21669955,6208e9875f17706b8090b2ac034a908a"
    sha256 "9054897275fde5b842ef3c075440d95f8ec1c5acc5ce34179ae8b182b88d307b"
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
