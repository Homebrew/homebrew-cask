cask "opendisplay" do
  version "1.30.3"
  sha256 "e260e9c9c7132ea7a763070b45ca1e54a368834dcaa7e43d89d25c12314d5c09"

  url "https://github.com/peetzweg/opendisplay/releases/download/v#{version}/OpenDisplay.dmg"
  name "OpenDisplay"
  desc "Second-display utility for iPhone and iPad over USB and Wi-Fi"
  homepage "https://opendisplay.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "OpenDisplay.app"

  uninstall quit: "com.peetzweg.opensidecar.mac"

  zap trash: [
    "~/Library/Caches/com.peetzweg.opensidecar.mac",
    "~/Library/HTTPStorages/com.peetzweg.opensidecar.mac",
    "~/Library/Logs/OpenDisplay",
    "~/Library/Preferences/com.peetzweg.opensidecar.mac.plist",
  ]
end
