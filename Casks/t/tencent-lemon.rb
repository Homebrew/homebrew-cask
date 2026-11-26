cask "tencent-lemon" do
  version "5.3.10,25ADB6BD8E4477801EBE9C19D2F6AC3D"
  sha256 "d1ae0c612746ffa536185b1f3389edfefd740fc5105d4e6ac661b8beff79f9bd"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/#{version.csv.second}/Lemon#{version.csv.first}.dmg"
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
    "~/Library/Application Support/com.tencent.Lemon",
    "~/Library/Caches/com.tencent.Lemon",
    "~/Library/Caches/com.tencent.LemonMonitor",
    "~/Library/HTTPStorages/com.tencent.Lemon*",
    "~/Library/Logs/LemonMonitor.log",
    "~/Library/Logs/Tencent Lemon.log",
    "~/Library/Preferences/com.tencent.Lemon.plist",
    "~/Library/Preferences/com.tencent.LemonUpdate.plist",
    "~/Library/Preferences/LemonMonitor_packet.dat",
    "~/Library/Preferences/Tencent Lemon_packet.dat",
  ]
end
