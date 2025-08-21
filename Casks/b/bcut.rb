cask "bcut" do
  arch arm: "arm", intel: "intel"
  pkg_key = on_arch_conditional arm: "arm_pkg_url", intel: "package_download_url"

  sha256 arm:   "139861fa75e941fe0f32e89af1b0dac8a577ae995a8ed277d59b351ef518868c",
         intel: "21f8808096708cd47a4b9e8483d3fcf6a9e3bcf9828677fe47f87cf3301d3be5"

  on_arm do
    version "3.10.4,20391062,b4f02665286af6f9f2294c72d1f368de"
  end
  on_intel do
    version "3.10.4,20391061,a2e1971fa41b4c383db31fabb263538c"
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
  depends_on macos: ">= :mojave"

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
