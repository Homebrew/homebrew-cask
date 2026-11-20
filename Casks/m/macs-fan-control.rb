cask "macs-fan-control" do
  version "1.5.23"
  sha256 "d30936dfc5a8bb616dbf116120ca69a62fceaef359aa03472b3e38ae67e1d926"

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
