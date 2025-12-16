cask "macs-fan-control" do
  version "1.5.20"
  sha256 "6d9b52e5bc35ec5cb0d9f83374b503f3b3faac8125e3ca90ab29d72097326af3"

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
