cask "bose-updater" do
  version "7.1.13.5398"
  sha256 "fdb5cd70c54e0ca938ed3ed4fda08462af2592826e00212cd2dbfb736a5aa9f5"

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  name "Bose Device Updater"
  desc "Software updates for Bose products"
  homepage "https://btu.bose.com/"

  livecheck do
    url "https://btu.bose.com/prod/iot-btu-fe-core/muv.json"
    strategy :json do |json|
      json["MUV"]
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
