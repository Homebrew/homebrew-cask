cask "cardhop" do
  version "1.3.6"
  sha256 "60b3ea3b884dee7163387b6a35a8ea1c273bea010e9e79fec1c3ed3158e32fb8"

  url "https://cdn.flexibits.com/Cardhop_#{version}.zip"
  appcast "https://flexibits.com/cardhop/appcast.php"
  name "Cardhop"
  desc "Contacts manager"
  homepage "https://flexibits.com/cardhop"

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
