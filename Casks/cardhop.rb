cask "cardhop" do
  version "2.0.3,1036"
  sha256 "88b5f42f5906df8b8d9dbbdd23a5bacba2b7f4eb27e0dd8951bae33c7f67fe69"

  url "https://cdn.flexibits.com/Cardhop_#{version.before_comma}.zip"
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
