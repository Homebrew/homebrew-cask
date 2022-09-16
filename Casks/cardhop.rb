cask "cardhop" do
  version "2.2,1090"
  sha256 "12214fa75c78963df1f3f0ee52bae010c7d616029a087b51f9d5110564cc49e6"

  url "https://cdn.flexibits.com/Cardhop_#{version.csv.first}.zip"
  name "Cardhop"
  desc "Contacts manager"
  homepage "https://flexibits.com/cardhop"

  livecheck do
    url "https://flexibits.com/cardhop/appcast.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cardhop.app"

  uninstall launchctl: "com.flexibits.cardhop.mac.launcher",
            quit:      "com.flexibits.cardhop.mac"

  zap trash: [
    "~/Library/Application Scripts/com.flexibits.cardhop.mac",
    "~/Library/Application Scripts/com.flexibits.cardhop.mac.launcher",
    "~/Library/Application Scripts/com.flexibits.cardhop.mac.BluetoothDialer",
    "~/Library/Containers/com.flexibits.cardhop.mac",
    "~/Library/Containers/com.flexibits.cardhop.mac.launcher",
    "~/Library/Containers/com.flexibits.cardhop.mac.BluetoothDialer",
    "~/Library/Preferences/com.flexibits.cardhop.mac.plist",
  ]
end
