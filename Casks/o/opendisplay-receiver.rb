cask "opendisplay-receiver" do
  version "1.28.2"
  sha256 "7c51b6ea6e40bd915c0158b5e76d8f0a47e775d43bea2f0de6e2521ba433b248"

  url "https://github.com/peetzweg/opendisplay/releases/download/v#{version}/OpenDisplayReceiver.dmg"
  name "OpenDisplay Receiver"
  desc "Receiver that turns a computer into a second display for OpenDisplay"
  homepage "https://opendisplay.app/"

  auto_updates true
  depends_on macos: :monterey

  app "OpenDisplay Receiver.app"

  uninstall quit: "com.peetzweg.opensidecar.mac.receiver"

  zap trash: [
    "~/Library/Caches/com.peetzweg.opensidecar.mac.receiver",
    "~/Library/HTTPStorages/com.peetzweg.opensidecar.mac.receiver",
    "~/Library/Logs/OpenDisplay Receiver",
    "~/Library/Preferences/com.peetzweg.opensidecar.mac.receiver.plist",
  ]
end
