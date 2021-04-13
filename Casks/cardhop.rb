cask "cardhop" do
  version "1.3.8,236"
  sha256 "edbc00e147cd2fd9262e6615ed0d18a16d63ebd22e0e6f333a4606a6dfbbaf13"

  url "https://cdn.flexibits.com/Cardhop_#{version.before_comma}.zip"
  name "Cardhop"
  desc "Contacts manager"
  homepage "https://flexibits.com/cardhop"

  livecheck do
    url "https://flexibits.com/cardhop/appcast.php"
    strategy :sparkle
  end

  auto_updates true

  app "Cardhop.app"

  uninstall launchctl: "com.flexibits.cardhop.mac.launcher",
            quit:      "com.flexibits.cardhop.mac"

  zap trash: [
    "~/Library/Preferences/com.flexibits.cardhop.mac.plist",
    "~/Library/Application Scripts/com.flexibits.cardhop.mac",
    "~/Library/Application Scripts/com.flexibits.cardhop.mac.launcher",
    "~/Library/Application Scripts/com.flexibits.cardhop.mac.BluetoothDialer",
    "~/Library/Containers/com.flexibits.cardhop.mac",
    "~/Library/Containers/com.flexibits.cardhop.mac.launcher",
    "~/Library/Containers/com.flexibits.cardhop.mac.BluetoothDialer",
  ]
end
