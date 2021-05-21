cask "manycam" do
  version "7.8.4.14"
  sha256 :no_check

  url "https://download3.manycams.com/ManyCam.dmg",
      verified: "download3.manycams.com/"
  name "ManyCam"
  desc "Live streaming software"
  homepage "https://manycam.com/"

  livecheck do
    url "https://manycam.com/mac_changes/"
    regex(%r{Version\s*(?:<[^/>]*>\s*)*(\d+(?:\.\d+)+)}i)
  end

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
