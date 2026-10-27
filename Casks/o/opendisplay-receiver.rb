cask "opendisplay-receiver" do
  version "1.30.0"
  sha256 "d0db0210ed859dbb7a4e7045ad90a8f43a888b17f00fe9d7201ec605fca153e0"

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
