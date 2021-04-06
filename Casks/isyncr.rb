cask "isyncr" do
  if MacOS.version <= :mojave
    version "5.14.11"
    sha256 "b234a1de565854fc9cdfefba9b2f05887e150ec01612bbfadaa0a0d95566034e"
  else
    version "6.0.3"
    sha256 "c7033eb946a6a6104a75cc5c182506f47a0399b54f3b4ce486e82a1c7d040154"
  end

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast "https://www.jrtstudio.com/files/SlashiSyncr38.js"
  name "iSyncr Desktop"
  desc "Syncs iTunes to Android over a USB or WiFi connection"
  homepage "https://www.jrtstudio.com/iSyncr-iTunes-for-Android"

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: "com.jrtstudio.iSyncrDesktop",
            quit:    "com.JRTStudio.iSyncrWiFi"
end
