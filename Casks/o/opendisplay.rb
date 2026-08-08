cask "opendisplay" do
  version "1.16.0"
  sha256 "a373f7c3816ea5180c319c1839be647197121dde5854f8a19a2ce5d40d544d9e"

  url "https://github.com/peetzweg/opendisplay/releases/download/v#{version}/OpenDisplay.dmg",
      verified: "github.com/peetzweg/opendisplay/"
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
    "~/Library/Preferences/com.peetzweg.opensidecar.mac.plist",
  ]
end
