cask "kdrive" do
  version "3.8.2.6"
  sha256 "27833aa02980d542523042f753bbfbfb328d608fa8021a89963083e06cc2629a"

  url "https://download.storage.infomaniak.com/drive/desktopclient/kDrive-#{version}.pkg"
  name "kDrive"
  desc "Client for the kDrive collaborative cloud storage service"
  homepage "https://www.infomaniak.com/en/ksuite/kdrive"

  livecheck do
    url "https://www.infomaniak.com/drive/latest"
    strategy :json do |json|
      json.dig("macos", "version")
    end
  end

  auto_updates true

  pkg "kDrive-#{version}.pkg"

  uninstall launchctl:  "864VDCS2QY.com.infomaniak.drive.desktopclient.LoginItemAgent",
            quit:       [
              "com.infomaniak.drive.desktopclient",
              "com.infomaniak.drive.desktopclient.Extension",
            ],
            login_item: "kDrive",
            pkgutil:    [
              "com.infomaniak.drive.desktopclient",
              "com.infomaniak.drive.desktopclient.Extension",
              "com.infomaniak.drive.uninstaller",
            ],
            delete:     "/Applications/kDrive/kDrive Uninstaller.app",
            rmdir:      "/Applications/kDrive"

  zap trash: [
    "~/Library/Application Scripts/864VDCS2QY.com.infomaniak.drive.desktopclient.LoginItemAgent",
    "~/Library/Application Scripts/com.infomaniak.drive.desktopclient.Extension",
    "~/Library/Caches/com.infomaniak.drive.desktopclient",
    "~/Library/Containers/864VDCS2QY.com.infomaniak.drive.desktopclient.LoginItemAgent",
    "~/Library/Containers/com.infomaniak.drive.desktopclient.Extension",
    "~/Library/Cookies/com.infomaniak.drive.desktopclient.binarycookies",
    "~/Library/Group Containers/864VDCS2QY.com.infomaniak.drive.desktopclient",
    "~/Library/Preferences/com.infomaniak.drive.desktopclient.plist",
    "~/Library/Preferences/kDrive",
  ]
end
