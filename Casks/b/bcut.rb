cask "bcut" do
  arch arm: "arm", intel: "intel"
  pkg_key = on_arch_conditional arm: "arm_pkg_url", intel: "package_download_url"

  on_arm do
    version "3.11.23,23019611,fac26722e81a0f0131df8208a6ad9e06"
    sha256 "1a4a98b152a7ee67981eb8fb1b86f76b1f28f08cb992315b0d44050bdee206db"
  end
  on_intel do
    version "3.11.23,23028550,74d00c07f1d638c5be104376afde3fbd"
    sha256 "791f3861edfdc43ec221c7555c4891ce06c6f88ef255eab9621894e9e182e3d8"
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
