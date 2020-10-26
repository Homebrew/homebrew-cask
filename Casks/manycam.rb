cask "manycam" do
  version "7.5.0.7"
  sha256 "67a5b485ab128e82717b62c8e0ec5898096979d1042567439ea3b4a6cfd10314"

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
