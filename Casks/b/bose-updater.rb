cask "bose-updater" do
  version "7.1.13.5323"
  sha256 "3129bc66c8e81489c0fa95fe2ac637eb91c73a657dbd22434d7f5fdeb5574cc5"

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  name "Bose Device Updater"
  desc "Software updates for Bose products"
  homepage "https://btu.bose.com/"

  livecheck do
    url "https://btu.bose.com/data/MUV.xml"
    strategy :xml do |xml|
      xml.elements["//ROOT"]&.attributes&.[]("MUV")
    end
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
