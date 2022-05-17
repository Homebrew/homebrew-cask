cask "kdrive" do
  version "3.3.4.20220504"
  sha256 "267118d289ac00d4c5c6ae199506abadd70cf1906117e6686817c65e97f11742"

  url "https://download.storage.infomaniak.com/drive/desktopclient/kDrive-#{version}.pkg"
  name "kDrive"
  desc "Client for the kDrive collaborative cloud storage service"
  homepage "https://www.infomaniak.com/kdrive"

  livecheck do
    url "https://www.infomaniak.com/drive/latest"
    strategy :page_match do |page|
      JSON.parse(page)["macos"]["downloadurl"][/kDrive[._-](\d+(?:\.\d+)+)\.pkg/i, 1]
    end
  end

  pkg "kDrive-#{version}.pkg"

  uninstall_preflight do
    system_command "/usr/bin/pkill", args: ["-f", "/Applications/kDrive.app"]
  end

  uninstall quit:      [
    "com.infomaniak.drive.desktopclient",
    "com.infomaniak.drive.desktopclient.Extension",
  ],
            pkgutil:   "com.infomaniak.drive.desktopclient",
            launchctl: "864VDCS2QY.com.infomaniak.drive.desktopclient.LoginItemAgent"

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
