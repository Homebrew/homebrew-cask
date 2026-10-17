cask "o+connect" do
  version "17.20.0,260916200816,794ab31695"

  on_arm do
    sha256 "52789642c8c6f9f20fed264d19a268fabcb8cdbc9d7130e7b785833392ae09ed"

    url "https://pc-assistant-cn.allawnfs.com/uploads/web/dmg/2026/09/21/19/57/34/OppoConnect_#{version.csv.first}_arm64_domestic_#{version.csv.second}_#{version.csv.third}.dmg",
        referer: "https://connect.oppo.com/"
  end
  on_intel do
    sha256 "96cbf85bdf193036a95898a2135f88f344feb22f52eb93f76a655d5db5be67cd"

    url "https://pc-assistant-cn.allawnfs.com/uploads/web/dmg/2026/09/21/19/58/15/OppoConnect_#{version.csv.first}_x64_domestic_#{version.csv.second}_#{version.csv.third}.dmg",
        referer: "https://connect.oppo.com/"
  end

  name "O+ Connect"
  name "O+互联"
  desc "Connect OPPO, OnePlus, and realme devices to a computer"
  homepage "https://connect.oppo.com/"

  livecheck do
    url "https://connect.oppo.com/api/v2/updatePackage/queryUrl?platform=macos-arm&serverName=connect.oppo.com",
        header: [
          "appId: pc-web",
          "ts: 1792231685",
          "sign: 7ff84324be75242e9608239263995477bca346f3b12831c2651e14fc45d48106",
        ]
    strategy :json do |json|
      match = json.dig("data", "fileName")&.match(/OppoConnect_v?(\d+(?:\.\d+)+)_arm64_domestic_(\w+)_(\w+)\.dmg/i)
      next unless match

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "O+Connect.app"

  uninstall launchctl: [
              "com.oplus.dsp.core*",
              "com.oplus.dsp.rc*",
            ],
            quit:      "com.oplus.devicespace"

  zap trash: [
    "/Library/Application Support/O+Connect",
    "/Library/Application Support/O+ConnectRoot",
    "/Library/LaunchAgents/com.oplus.dsp.rc.plist",
    "/Library/LaunchDaemons/com.oplus.dsp.core.plist",
    "/Library/LaunchDaemons/com.oplus.dsp.rc.legacy.plist",
    "/Library/LaunchDaemons/com.oplus.O+Connect.uninstall.plist",
    "/Library/Logs/devicespace",
    "~/Library/Application Scripts/com.oplus.devicespace.remotehelper",
    "~/Library/Application Support/O+Connect",
    "~/Library/Caches/com.oplus.devicespace",
    "~/Library/Caches/O+Connect",
    "~/Library/HTTPStorages/com.oplus.devicespace",
    "~/Library/Logs/devicespace",
    "~/Library/Logs/devicespace-daemon",
    "~/Library/Logs/O+Connect",
    "~/Library/Preferences/com.oplus.devicespace.plist",
    "~/Library/Saved Application State/com.oplus.devicespace.savedState",
    "~/Library/WebKit/com.oplus.devicespace",
  ]
end
