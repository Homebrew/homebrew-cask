cask "opendisplay-receiver" do
  version "1.28.1"
  sha256 "e1750cf7f384c0fabe3d5a9097618868873447da02b8f1652bd76cdb9338928c"

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
