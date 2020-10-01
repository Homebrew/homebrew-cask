cask "macs-fan-control" do
  version "1.5.8.23"
  sha256 "a29d059616d638bd780ceabcc3bc529ad11455523560e894d0b377ec3cbd174a"

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
