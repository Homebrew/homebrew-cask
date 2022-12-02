cask "macs-fan-control" do
  version "1.5.14"
  sha256 "17b66b957d8b6c0f0a55c5bfb99a4a1067faa2b8729193d591e0bb6833db8dc1"

  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version}/macsfancontrol.zip",
      verified: "github.com/crystalidea/macs-fan-control/"
  name "Macs Fan Control"
  desc "Controls and monitors all fans on Apple computers"
  homepage "https://www.crystalidea.com/macs-fan-control"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Macs Fan Control.app"

  uninstall signal: ["TERM", "com.crystalidea.MacsFanControl"]

  zap trash: "~/Library/Preferences/com.crystalidea.macsfancontrol.plist"
end
