cask "egnyte-connect" do
  version "3.14.11_202506"
  sha256 "8a8cb5dbc7484e8cf701eee845418e771603d61826b160d34b67b292b103eb83"

  url "https://egnyte-cdn.egnyte.com/egnytedrive/mac/en-us/#{version.underscores_to_dots.major_minor_patch}/EgnyteConnect_#{version}.pkg"
  name "Egnyte Connect"
  desc "Real-time access to your files and folders stored in the cloud"
  homepage "https://www.egnyte.com/file-access/desktop-access"

  livecheck do
    url "https://helpdesk.egnyte.com/hc/en-us/articles/205237150-Desktop-App-Installers"
    strategy :page_match do |page|
      match = page.match(/EgnyteConnect_(\d+(?:\.\d+)+)_(\d+)\.pkg/i)
      next if match.blank?

      "#{match[1]}_#{match[2]}"
    end
  end

  pkg "EgnyteConnect_#{version}.pkg"

  uninstall pkgutil:   "com.egnyte.Egnyte-Drive.inst",
            launchctl: [
              "com.egnyte.EgnyteDriveLauncherHelper",
              "com.egnyte.EgnyteFS.Mounter.Helper",
            ],
            delete:    [
              "/Library/Filesystems/egnytefs.fs",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.egnyte.Egnyte-Drive.FinderSyc.EgnyteFinderSync",
    "~/Library/Application Support/Egnyte Connect",
    "~/Library/Caches/SentryCrash/Egnyte Connect",
    "~/Library/Caches/SentryCrash/EgnyteDriveFS",
    "~/Library/Caches/com.egnyte.Egnyte-Drive",
    "~/Library/Caches/com.egnyte.cloudfs.EgnyteDriveFS",
    "~/Library/Containers/com.egnyte.Egnyte-Drive.FinderSyc.EgnyteFinderSync",
    "~/Library/Group Containers/FELUD555VC.group.com.egnyte.Egnyte-Drive",
    "~/Library/HTTPStorages/com.egnyte.Egnyte-Drive",
    "~/Library/HTTPStorages/com.egnyte.cloudfs.EgnyteDriveFS",
    "~/Library/Preferences/com.egnyte.Egnyte-Drive.plist",
    "~/Library/Preferences/com.egnyte.cloudfs.EgnyteDriveFS.plist",
  ]
end
