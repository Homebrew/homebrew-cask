cask "kdrive" do
  version "3.4.3.20230613"
  sha256 "251a6e60db2b41edccc6b62d29b87d516f9caa3d0612eb9d8afe01c65f692c23"

  url "https://download.storage.infomaniak.com/drive/desktopclient/kDrive-#{version}.pkg"
  name "kDrive"
  desc "Client for the kDrive collaborative cloud storage service"
  homepage "https://www.infomaniak.com/kdrive"

  livecheck do
    url "https://www.infomaniak.com/drive/latest"
    regex(/kDrive[._-](\d+(?:\.\d+)+)\.pkg/i)
    strategy :json do |json|
      json["macos"]["downloadurl"]&.scan(regex)&.map { |match| (match[0]).to_s }
    end
  end

  pkg "kDrive-#{version}.pkg"

  uninstall_preflight do
    system_command "/usr/bin/pkill", args: ["-f", "/Applications/kDrive/kDrive.app"]
  end

  uninstall quit:      [
              "com.infomaniak.drive.desktopclient",
              "com.infomaniak.drive.desktopclient.Extension",
            ],
            pkgutil:   [
              "com.infomaniak.drive.desktopclient",
              "com.infomaniak.drive.desktopclient.Extension",
              "com.infomaniak.drive.uninstaller",
            ],
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
