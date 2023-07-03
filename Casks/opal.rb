cask "opal" do
  version "0.26"
  sha256 "b7d95fa3188826d2a0332c596f960aa88ca706e2bdc00e7d9a26fc05834c0a46"

  url "https://opalcamera.sfo3.digitaloceanspaces.com/Opal%20#{version}.pkg",
      verified: "opalcamera.sfo3.digitaloceanspaces.com/"
  name "Opal"
  desc "Professional webcam software for the Opal C1"
  homepage "https://faqs.opal.camera/download"

  livecheck do
    url "https://opalcamera.com/download"
    regex(/Opal\s+Build\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  pkg "Opal #{version}.pkg"

  uninstall pkgutil:   "com.opalcamera.OpalCamera",
            launchctl: [
              "com.opalcamera.cameraExtensionShim",
              "com.opalcamera.OpalCamera.installUpdate.daemon",
              "com.opalcamera.OpalCamera.startOnUsbPlugged.agent",
              "com.opalcamera.OpalCamera.uninstall.daemon",
              "com.opalcamera.OpalCameraStartAtLogin",
              "com.opalcamera.vcam.assistant",
            ],
            quit:      "com.opalcamera.OpalCamera",
            delete:    [
              "/Library/LaunchDaemons/com.opalcamera.cameraExtensionShim.plist",
              "/Library/LaunchDaemons/com.opalcamera.OpalCamera.installUpdate.daemon.plist",
              "/Library/LaunchDaemons/com.opalcamera.OpalCamera.uninstall.daemon.plist",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.opalcamera.OpalCameraStartAtLogin",
    "~/Library/Application Support/com.opalcamera.OpalCamera",
    "~/Library/Caches/com.opalcamera.OpalCamera",
    "~/Library/Caches/com.opalcamera.OpalCameraDeviceService",
    "~/Library/Caches/com.opalcamera.OpalCameraVideoService",
    "~/Library/Containers/com.opalcamera.OpalCameraStartAtLogin",
    "~/Library/HTTPStorages/com.opalcamera.OpalCamera",
    "~/Library/HTTPStorages/com.opalcamera.OpalCameraDeviceService",
    "~/Library/HTTPStorages/com.opalcamera.OpalCameraVideoService",
    "~/Library/Logs/com.opalcamera.OpalCamera",
    "~/Library/Preferences/com.opalcamera.OpalCamera.plist",
    "~/Library/Preferences/group.97Z3HJWCRT.com.opalcamera.Opal.plist",
  ]
end
