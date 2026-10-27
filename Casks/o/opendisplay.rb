cask "opendisplay" do
  version "1.30.0"
  sha256 "9e2579f1ceff52431fe9ac7849320066312ce87f1d26630fd9d9eb4f3d2011f9"

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
    "~/Library/Preferences/com.peetzweg.opensidecar.mac.plist",
  ]
end
