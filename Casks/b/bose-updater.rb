cask "bose-updater" do
  version "7.1.13.5403"
  sha256 "f5d3260a6ffac571e46163827ade30ee46022e791e48d463bd23b02b9c083f3e"

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
