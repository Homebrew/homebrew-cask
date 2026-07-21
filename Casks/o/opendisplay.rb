cask "opendisplay" do
  version "1.12.1"
  sha256 "fafcc59f153d06ac69ba30dd029d3a503e8ee375238768fd2126a6c5bada3d06"

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
