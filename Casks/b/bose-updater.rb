cask "bose-updater" do
  version "7.1.13.5369"
  sha256 "bbcdae427c0bd94f94395a3e31acd2cb757fd967928a951f3d5e68171dda1a0c"

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

  no_autobump! because: :requires_manual_review

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
