cask "macs-fan-control" do
  version "1.5.11"
  sha256 "92327f23ef485e81a2d5ed4ee41317fbd7cb7ea6a7035944e1c4566058c6bd15"

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
