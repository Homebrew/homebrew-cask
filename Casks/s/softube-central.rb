cask "softube-central" do
  version "2.0.0"
  sha256 "aadc2107e4f529ab2a5768c0b965a2a8a3e4c9ef35cd6480971ddf834c9045b1"

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

  uninstall quit:    [
              "com.softube.Console1OSD_Release",
              "org.softube.com.softubecentral",
            ],
            pkgutil: [
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
