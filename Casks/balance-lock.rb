cask "balance-lock" do
  version "1.0.6"
  sha256 "5419f62265740a2b185d0c4452b9fad4f682ebbb4b7108d2d638d77f35a28490"

  url "https://www.tunabellysoftware.com/resources/Balance_Lock_#{version}.dmg"
  appcast "https://www.tunabellysoftware.com/resources/sparkle/balancelock.xml"
  name "Balance Lock"
  homepage "https://www.tunabellysoftware.com/balance_lock"

  app "Balance Lock.app"

  zap trash: [
    "~/Library/Application Support/Balance Lock",
    "~/Library/Preferences/com.tunabelly.balancelock.plist",
  ]
end
