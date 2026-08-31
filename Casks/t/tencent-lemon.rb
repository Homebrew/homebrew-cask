cask "tencent-lemon" do
  version "5.3.6,EBE8EF4A8859CB996D58A364699DCA60"
  sha256 "ce83b2923ea5d6c696b24b53945d5e1f04a4a428e414c1b9740429848baa187c"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/#{version.csv.second}/Lemon#{version.csv.first}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/"
  name "Tencent Lemon Cleaner"
  desc "Cleanup and system status tool"
  homepage "https://lemon.qq.com/"

  livecheck do
    url "https://lemon.guanjia.qq.com/latest/package?version=newTag"
    regex(%r{/module_update/(\h+)/Lemon[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("latest", "downloadurl")&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Tencent Lemon.app"

  uninstall quit:   "com.tencent.Lemon",
            delete: [
              "/Library/Logs/Lemon",
              "/Library/Preferences/LemonDaemon_packet.dat",
            ]

  zap trash: [
    "~/Library/Caches/com.tencent.Lemon",
    "~/Library/Caches/com.tencent.LemonMonitor",
    "~/Library/Logs/LemonMonitor.log",
    "~/Library/Logs/Tencent Lemon.log",
    "~/Library/Preferences/com.tencent.LemonUpdate.plist",
    "~/Library/Preferences/LemonMonitor_packet.dat",
    "~/Library/Preferences/Tencent Lemon_packet.dat",
  ]
end
