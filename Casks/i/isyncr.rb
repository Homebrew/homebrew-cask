cask "isyncr" do
  version "6.1.0"
  sha256 "29d8e06de375a41efcdd378dec9f7f08a92212325270fb462aae5593a1217fbc"

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  name "iSyncr Desktop"
  desc "Syncs iTunes to Android over a USB or WiFi connection"
  homepage "https://www.jrtstudio.com/iSyncr-iTunes-for-Android"

  disable! date: "2025-03-15", because: :no_longer_available

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall quit:    "com.JRTStudio.iSyncrWiFi",
            pkgutil: "com.jrtstudio.iSyncrDesktop"

  zap trash: [
    "~/Library/Caches/com.JRTStudio.iSyncrWiFi",
    "~/Library/HTTPStorages/com.JRTStudio.iSyncrWiFi",
    "~/Library/Preferences/com.JRTStudio.iSyncrWiFi.plist",
  ]

  caveats do
    requires_rosetta
  end
end
