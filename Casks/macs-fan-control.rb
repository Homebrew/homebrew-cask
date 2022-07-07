cask "macs-fan-control" do
  version "1.5.13"
  sha256 "4c26b04210c423b910d216c86bba4752bbc7fbe05f8222035aa266f908f3ec5f"

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
