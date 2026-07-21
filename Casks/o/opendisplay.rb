cask "opendisplay" do
  version "1.13.0"
  sha256 "5a8453cecb2d0235aca8d5b09436a1441f108c1ad97531773fc313e957783b74"

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
