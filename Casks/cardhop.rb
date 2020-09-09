cask "cardhop" do
  version "1.3.5"
  sha256 "d94e0ffc60861d7d7f3498e50460f3790d83bbb0eff7c567d7b7ba14aa4e5d19"

  url "https://cdn.flexibits.com/Cardhop_#{version}.zip"
  appcast "https://flexibits.com/cardhop/appcast.php"
  name "Cardhop"
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
