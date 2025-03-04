cask "kdrive" do
  version "3.6.9.20250304"
  sha256 "4d6381d11ef6c908b22134be48797912c8b2b811606cc2d245441b223beb091b"

  url "https://download.storage.infomaniak.com/drive/desktopclient/kDrive-#{version}.pkg"
  name "kDrive"
  desc "Client for the kDrive collaborative cloud storage service"
  homepage "https://www.infomaniak.com/kdrive"

  livecheck do
    url "https://www.infomaniak.com/drive/latest"
    strategy :json do |json|
      json.dig("macos", "version")
    end
  end

  depends_on macos: ">= :catalina"

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
