cask "macs-fan-control" do
  version "1.5.20"
  sha256 "085d2f5d68142760db378d78fca4bc68b739a8ae771d87f18ea902807cf13ca8"

  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version}/macsfancontrol.zip",
      verified: "github.com/crystalidea/macs-fan-control/"
  name "Macs Fan Control"
  desc "Controls and monitors all fans on Apple computers"
  homepage "https://crystalidea.com/macs-fan-control"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Macs Fan Control.app"

  uninstall signal: ["TERM", "com.crystalidea.MacsFanControl"]

  zap trash: "~/Library/Preferences/com.crystalidea.macsfancontrol.plist"
end
