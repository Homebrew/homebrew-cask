cask "manycam" do
  version "7.5.0.7"
  sha256 "67a5b485ab128e82717b62c8e0ec5898096979d1042567439ea3b4a6cfd10314"

  # download3.manycams.com was verified as official when first introduced to the cask
  url "https://download3.manycams.com/ManyCam.dmg"
  appcast "https://manycam.com/mac_changes/"
  name "ManyCam"
  desc "Live Video Made Better"
  homepage "https://manycam.com/"

  depends_on macos: ">= :el_capitan"

  pkg "ManyCam-#{version}.pkg"

  uninstall quit:   "com.visicom.ManyCam.application",
            script: {
              executable: "/Applications/ManyCam/Uninstall\ ManyCam.app/Contents/MacOS/Uninstall\ ManyCam",
              args:       ["--mode", "unattended"],
              sudo:       true,
            },
            delete: "/Applications/ManyCam"
end
