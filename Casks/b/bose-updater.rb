cask "bose-updater" do
  version "7.1.13.5238"
  sha256 "8a2190385a37973b623f8bd52551ea8da8bb382ae01fe6a110e66f37a29ea8df"

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  name "Bose Device Updater"
  desc "Software updates for Bose products"
  homepage "https://btu.bose.com/"

  livecheck do
    url "https://btu.bose.com/data/MUV.xml"
    regex(/ROOT\sMUV="(\d+(?:.\d+)*)"/i)
  end

  app "Bose Updater.app"

  uninstall quit: [
    "com.bose.BoseUpdater",
    "org.qt-project.Qt.*",
  ]

  zap trash: "~/Library/Preferences/com.bose.Bose Updater.plist"

  caveats do
    license "https://btu.bose.com/#section=install"
    requires_rosetta
  end
end
