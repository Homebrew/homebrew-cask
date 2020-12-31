cask "manycam" do
  version "7.8.0.17"
  sha256 "d0ced7328223277282e0f2afe791e03106800622bd232fa4dae63d8bf80cdf77"

  # download3.manycams.com was verified as official when first introduced to the cask
  url "https://download3.manycams.com/ManyCam.dmg"
  appcast "https://manycam.com/mac_changes/"
  name "ManyCam"
  desc "Live streaming software"
  homepage "https://manycam.com/"

  depends_on macos: ">= :el_capitan"

  pkg "ManyCam-#{version}.pkg"

  uninstall pkgutil:   "com.visicom.ManyCam.installer.pkg",
            quit:      "com.visicom.ManyCam.application",
            launchctl: "com.visicom.ManyCam.VideoDevice.agent"

  zap trash: [
    "~/Library/Application Support/Visicom Media",
    "~/Library/Preferences/com.visicom-media.ManyCam.plist",
    "~/Library/Saved Application State/com.visicom.ManyCam.application.savedState",
  ]
end
