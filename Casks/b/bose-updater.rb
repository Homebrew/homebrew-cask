cask "bose-updater" do
  version "7.1.13.5402"
  sha256 "132b0aed247a914cccf9559db1009783bb8cbe3a0cc6f8e8b85b72127f53ff5b"

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
