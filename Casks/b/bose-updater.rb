cask "bose-updater" do
  version "7.1.13.5370"
  sha256 "e09bb696fc3223121322f9e76b8894636ab8142b126c1cd606412a2d2e7c0504"

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
