cask "macs-fan-control" do
  version "1.5.8.1"
  sha256 "4469d8162de3145905083e425f919efededba21493235794cb5848d197fffca2"

  # github.com/crystalidea/macs-fan-control/ was verified as official when first introduced to the cask
  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version}/macsfancontrol.zip"
  appcast "https://github.com/crystalidea/macs-fan-control/releases.atom"
  name "Macs Fan Control"
  desc "Controls and monitors all fans on Apple computers"
  homepage "https://www.crystalidea.com/macs-fan-control"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Macs Fan Control.app"

  uninstall signal: ["TERM", "com.crystalidea.MacsFanControl"]

  zap trash: "~/Library/Preferences/com.crystalidea.macsfancontrol.plist"
end
