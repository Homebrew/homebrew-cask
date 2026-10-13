cask "macs-fan-control" do
  version "1.5.22"
  sha256 "d4c1cce8e183d656621bf0e6690f1678a844e88d5e4c61661c1c8a39fc92d55e"

  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version}/macsfancontrol.zip"
  name "Macs Fan Control"
  desc "Controls and monitors all fans on Apple computers"
  homepage "https://crystalidea.com/macs-fan-control"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Macs Fan Control.app"

  uninstall signal: ["TERM", "com.crystalidea.macsfancontrol"]

  zap trash: "~/Library/Preferences/com.crystalidea.macsfancontrol.plist"
end
