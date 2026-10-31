cask "o+connect" do
  version "16.2.10,2ad6568"

  on_arm do
    sha256 "81ca1c12b6fd7087906faa966452ecc444e6dbe06518779cdfc00d6b9e866fb7"

    url "https://pc-assistant-us.allawnofs.com/uploads/web/dmg/2026/06/13/17/07/57/OplusConnect_#{version.csv.first.tr(".", "_")}_arm64_export_260612211223_#{version.csv.second}.dmg",
        referer: "https://connect.oppo.com/"
  end
  on_intel do
    sha256 "cb446e3109f6873965b4c881108a822c0ed0b0547633524b91f3bd3f16e5f260"

    url "https://pc-assistant-us.allawnofs.com/uploads/web/dmg/2026/06/13/17/06/45/OplusConnect_#{version.csv.first.tr(".", "_")}_x64_export_260612213743_#{version.csv.second}.dmg",
        referer: "https://connect.oppo.com/"
  end

  name "O+ Connect"
  name "O+互联"
  desc "Connect OPPO, OnePlus, and realme devices to a computer"
  homepage "https://connect.oppo.com/"

  livecheck do
    url "https://connect.oppo.com/"
    strategy :page_match do |page|
      require "digest"

      base = "https://connect.oppo.com"

      # The release endpoint requires an `appId`/`ts`/`sign` triple and the
      # signing key is a public constant in the site's JS bundle, so resolve the
      # bundle that is currently served and sign with a fresh timestamp rather
      # than pinning either the key or the timestamp in the cask.
      # The site serves separate builds per region and writes the entry script
      # as a relative path in one and an absolute URL in the other, so match the
      # path in either form.
      entry = page[%r{src=["'][^"']*?/static/(index-[\w-]+\.js)["']}i, 1]
      next if entry.blank?

      index = Homebrew::Livecheck::Strategy.page_content("#{base}/static/#{entry}")[:content]
      next if index.blank?

      request_js = index[%r{\./(request-[\w-]+\.js)}i, 1]
      next if request_js.blank?

      request = Homebrew::Livecheck::Strategy.page_content("#{base}/static/#{request_js}")[:content]
      next if request.blank?

      key = request[/"pc-web"\s*,\s*\w+\s*=\s*"([0-9a-f]{32})"/i, 1]
      next if key.blank?

      params = "platform=macos-arm&serverName=connect.oppo.com"
      timestamp = Time.now.to_i.to_s
      signature = Digest::SHA256.hexdigest("#{params}#{timestamp}#{key}")

      content = Homebrew::Livecheck::Strategy.page_content(
        "#{base}/api/v2/updatePackage/queryUrl?#{params}",
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

      # `OplusConnect_<version>_<arch>_<region>_<build>_<hash>.dmg`, where the
      # version is dot-separated in some builds and underscore-separated in
      # others, so split either way around the architecture token.
      parts = file_name.sub(/\.dmg\z/i, "").split("_")
      arch = parts.index("arm64")
      next if arch.nil? || arch < 2

      "#{parts[1...arch].join(".")},#{parts[-1]}"
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
