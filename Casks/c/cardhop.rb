cask "cardhop" do
  version "2.4.3"
  sha256 "cd6ec9d92c46017822f6b60a6abefb21ca05b1daab9aaa06fa7ed87a278998c5"

  url "https://cdn.flexibits.com/Cardhop_#{version}.zip"
  name "Cardhop"
  desc "Contacts manager"
  homepage "https://flexibits.com/cardhop"

  livecheck do
    url "https://flexibits.com/cardhop/appcast.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
