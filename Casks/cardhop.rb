cask "cardhop" do
  version "1.3.7"
  sha256 "12ebd91f64dce8db3924b25487a8984e33803c9fbea8598d049f383563572563"

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
