cask "bluetooth-disconnect-on-display-sleep" do
  version "1.0"
  sha256 "48b2dba8e2720abd4ca6bb2b7eb36f28cf4309e01fc1bbe42bd6f388c9a236bd"

  url "https://github.com/six6liu/macos-bluetooth-disconnect-on-display-sleep/releases/download/v#{version}/Display-BT-Toggle-v#{version}.zip"
  name "macos-bluetooth-disconnect-on-display-sleep"
  desc "Disconnect a Bluetooth device when the display sleeps and reconnect on wake"
  homepage "https://github.com/six6liu/macos-bluetooth-disconnect-on-display-sleep"

  livecheck do
    url :url
    strategy :github_latest_release
  end

  depends_on macos: ">= :big_sur"

  depends_on formula: "blueutil"

  app "Display BT Toggle.app"

  zap trash: "~/Library/Preferences/com.apple.scripteditor.id.macos-bluetooth-disconnect-on-display-sleep.plist"
end
