cask "bose-updater" do
  version "7.1.13.5180"
  sha256 "9b35d493854d0c01decaa44142782899a24fa3c23774882bcf34096354865f1d"

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
  end
end
