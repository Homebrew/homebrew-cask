cask "opendisplay-receiver" do
  version "1.26.0"
  sha256 "995fe899486d4fc500551f8ef024ccdef1731b66cb82863820a3a1a6cf8daca6"

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
