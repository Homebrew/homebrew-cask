cask "softube-central" do
  version "2.1.4"
  sha256 "4158f99732e7c8132465b203a57c9297a20c39d2725f0cf144ef6c40aa5a50da"

  url "https://softubestorage.b-cdn.net/softubecentraldata/softubecentral/Softube%20Central-#{version}-universal.pkg",
      verified: "softubestorage.b-cdn.net/"
  name "Softube Central"
  desc "Installer for installation and license activation of Softube products"
  homepage "https://www.softube.com/"

  livecheck do
    url "https://softubestorage.b-cdn.net/softubecentraldata/softubecentral/latest-mac.yml?noCache=#{Time.now.to_i}"
    strategy :electron_builder
  end

  auto_updates true
  depends_on cask: "ilok-license-manager"

  pkg "Softube Central-#{version}-universal.pkg"

  uninstall launchctl: "com.softube.installerdaemon.helper",
            quit:      [
              "com.softube.Console1OSD_Release",
              "org.softube.com.softubecentral",
            ],
            pkgutil:   [
              "com.softube.installerdaemon.helper",
              "org.softube.com.softubecentral",
            ]

  zap trash: [
    "/Library/Application Support/Softube",
    "/Library/LaunchDaemons/com.softube.installerdaemon.helper.plist",
    "/Library/Preferences/com.softube.settings.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.softube.com.softubecentral.sfl*",
    "~/Library/Application Support/Softube*",
    "~/Library/Logs/Softube Central",
    "~/Library/Preferences/org.softube.com.softubecentral.plist",
  ]
end
