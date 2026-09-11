cask "bose-updater" do
  version "7.1.13.5404"
  sha256 "9281944be4a50bc383a691fd630a32da9b3b7aaf0b766f6d590a8a6eccaae9f8"

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

  depends_on :macos

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
