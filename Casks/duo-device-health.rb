cask "duo-device-health" do
  version "4.0.0.0"
  sha256 "7bb73a904df90d6514b02424a8d8e7e48e0818fc3dc59abf6effcbda17c167a2"

  url "https://dl.duosecurity.com/DuoDeviceHealth-#{version}.pkg",
      verified: "dl.duosecurity.com/"
  name "Duo Device Health"
  desc "Application for testing health of a device"
  homepage "https://duo.com/demos/download-and-install-device-health"

  livecheck do
    url :url
    strategy :header_match
    regex(/DuoDeviceHealth-(\d+(?:\.\d+)*)\.pkg/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "DuoDeviceHealth-#{version}.pkg"

  uninstall pkgutil: [
    "com.duosecurity.duo-device-health",
    "com.duosecurity.duoappupdater",
  ]
end
