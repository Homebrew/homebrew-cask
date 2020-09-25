cask "macs-fan-control" do
  version "1.5.8"
  sha256 "7e3c2f0d1dc348311f84a4ad18452d513260019125a2034b4b42453d0744e4df"

  # github.com/crystalidea/macs-fan-control/ was verified as official when first introduced to the cask
  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version.major_minor_patch}/macsfancontrol.zip"
  appcast "https://github.com/crystalidea/macs-fan-control/releases.atom",
          must_contain: version.major_minor_patch
  name "Macs Fan Control"
  desc "Controls and monitors all fans on Apple computers"
  homepage "https://www.crystalidea.com/macs-fan-control"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Macs Fan Control.app"

  uninstall signal: ["TERM", "com.crystalidea.MacsFanControl"]

  zap trash: "~/Library/Preferences/com.crystalidea.macsfancontrol.plist"
end
