cask "sip-app" do
  version "4.1"
  sha256 "77fa8954b4e5e8bec5eba19484319eb2c7c3a59be7ac961de6044af7b04b282e"

  livecheck do
    url "https://sipapp.fra1.digitaloceanspaces.com/updates/v#{version.major}/sip.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  url "https://sipapp.fra1.digitaloceanspaces.com/updates/v#{version.major}/sip-#{version}.dmg",
      verified: "sipapp.fra1.digitaloceanspaces.com/updates/"
  name "Sip"
  desc "Collect, organise & share colours"
  homepage "https://sipapp.io/"

  auto_updates true

  depends_on macos: ">= :sonoma"

  app "Sip.app"

  uninstall quit: "io.sipapp.Sip-paddle"

  zap trash: [
    "~/.sip_v*",
    "~/Library/Application Support/CrashReporter/Sip_*.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.sipapp.sip-paddle.sfl*",
    "~/Library/Application Support/io.sipapp.Sip-paddle",
    "~/Library/Application Support/Sip",
    "~/Library/Caches/io.sipapp.Sip-paddle",
    "~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies",
    "~/Library/Logs/DiagnosticReports/Sip-*.ips",
    "~/Library/HTTPStorages/io.sipapp.Sip-paddle",
    "~/Library/Preferences/io.sipapp.Sip-paddle.plist",
    "~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState",
    "~/Library/WebKit/io.sipapp.Sip-paddle",
  ]
end
