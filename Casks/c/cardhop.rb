cask "cardhop" do
  version "2.2.14"
  sha256 "273f5288dbfe1a16ba8888065c0dd6bf9dd4b1ef7d3581d49b46fee3a1c6d70c"

  url "https://cdn.flexibits.com/Cardhop_#{version}.zip"
  name "Cardhop"
  desc "Contacts manager"
  homepage "https://flexibits.com/cardhop"

  livecheck do
    url "https://flexibits.com/cardhop/appcast.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Cardhop.app"

  uninstall launchctl: "com.flexibits.cardhop.mac.launcher",
            quit:      "com.flexibits.cardhop.mac"

  zap trash: [
    "~/Library/Application Scripts/com.flexibits.cardhop.mac",
    "~/Library/Application Scripts/com.flexibits.cardhop.mac.BluetoothDialer",
    "~/Library/Application Scripts/com.flexibits.cardhop.mac.launcher",
    "~/Library/Containers/com.flexibits.cardhop.mac",
    "~/Library/Containers/com.flexibits.cardhop.mac.BluetoothDialer",
    "~/Library/Containers/com.flexibits.cardhop.mac.launcher",
    "~/Library/Preferences/com.flexibits.cardhop.mac.plist",
  ]
end
