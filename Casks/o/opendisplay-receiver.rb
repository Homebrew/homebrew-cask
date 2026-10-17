cask "opendisplay-receiver" do
  version "1.25.0"
  sha256 "7243312177caa1335789521b02ff5d37c0e875f58b2c06d96f7dd524f6bfbbbb"

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
    "~/Library/Preferences/com.peetzweg.opensidecar.mac.receiver.plist",
  ]
end
