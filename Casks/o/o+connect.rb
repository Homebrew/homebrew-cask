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
    url "https://connect.oppo.com/api/v2/updatePackage/queryUrl?platform=macos-arm&serverName=connect.oppo.com"
    strategy :page_match do |_page|
      require "digest"

      params = "platform=macos-arm&serverName=connect.oppo.com"
      timestamp = Time.now.to_i.to_s
      signature = Digest::SHA256.hexdigest("#{params}#{timestamp}c9412a3fc35f465ca5abe7001bc48d20")

      content = Homebrew::Livecheck::Strategy.page_content(
        "https://connect.oppo.com/api/v2/updatePackage/queryUrl?#{params}",
        options: Homebrew::Livecheck::Options.new(
          referer:    "https://connect.oppo.com/",
          user_agent: :browser,
          header:     [
            "appId: pc-web",
            "ts: #{timestamp}",
            "sign: #{signature}",
          ],
        ),
      )[:content]
      next if content.blank?

      file_name = Homebrew::Livecheck::Strategy::Json.parse_json(content).dig("data", "fileName")
      next if file_name.blank?

      match = file_name.match(/OppoConnect_v?(\d+(?:\.\d+)+)_arm64_domestic_(\w+)_(\w+)\.dmg/i)
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
    "~/Library/Application Scripts/com.oplus.devicespace.extension",
    "~/Library/Application Scripts/com.oplus.devicespace.remotehelper",
    "~/Library/Application Scripts/group.com.oplus.devicespace",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.oplus.devicespace.sfl*",
    "~/Library/Application Support/O+Connect",
    "~/Library/Caches/com.oplus.devicespace",
    "~/Library/Caches/O+Connect",
    "~/Library/Containers/com.oplus.devicespace.extension",
    "~/Library/Group Containers/group.com.oplus.devicespace",
    "~/Library/HTTPStorages/com.oplus.devicespace",
    "~/Library/Logs/devicespace",
    "~/Library/Logs/devicespace-daemon",
    "~/Library/Logs/O+Connect",
    "~/Library/Preferences/com.oplus.devicespace.plist",
    "~/Library/Saved Application State/com.oplus.devicespace.savedState",
    "~/Library/WebKit/com.oplus.devicespace",
  ]
end
