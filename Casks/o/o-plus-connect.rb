cask "o-plus-connect" do
  version "17.20.0"

  on_arm do
    sha256 "52789642c8c6f9f20fed264d19a268fabcb8cdbc9d7130e7b785833392ae09ed"

    url "https://pc-assistant-cn.allawnfs.com/uploads/web/dmg/2026/09/21/19/57/34/OppoConnect_#{version}_arm64_domestic_260916200816_794ab31695.dmg",
        referer: "https://connect.oppo.com/"
  end
  on_intel do
    sha256 "96cbf85bdf193036a95898a2135f88f344feb22f52eb93f76a655d5db5be67cd"

    url "https://pc-assistant-cn.allawnfs.com/uploads/web/dmg/2026/09/21/19/58/15/OppoConnect_#{version}_x64_domestic_260916200816_794ab31695.dmg",
        referer: "https://connect.oppo.com/"
  end

  name "O+ Connect"
  name "O+互联"
  desc "Connect OPPO, OnePlus, and realme devices to a computer"
  homepage "https://connect.oppo.com/"

  livecheck do
    skip "Latest version is only published through a signed API request"
  end

  auto_updates true
  depends_on :macos

  app "O+Connect.app"

  zap trash: [
    "/Library/Application Support/devicespace",
    "/Library/Application Support/O+Connect",
    "/Library/LaunchDaemons/com.oplus.dsp.core.plist",
    "/Library/LaunchDaemons/com.oplus.dsp.rc.plist",
    "/Library/Logs/devicespace",
    "~/Library/Application Support/O+Connect",
    "~/Library/Caches/com.oplus.devicespace",
    "~/Library/Caches/O+Connect",
    "~/Library/HTTPStorages/com.oplus.devicespace",
    "~/Library/Logs/O+Connect",
    "~/Library/Preferences/com.oplus.devicespace.plist",
    "~/Library/Saved Application State/com.oplus.devicespace.savedState",
    "~/Library/WebKit/com.oplus.devicespace",
  ]
end
