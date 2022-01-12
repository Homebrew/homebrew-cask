cask "cardhop" do
  version "2.0.7,1060"
  sha256 "5f9482096e95c47a07abd65c48296c2423814488d4d4f198eb47816f3b5da8ac"

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
