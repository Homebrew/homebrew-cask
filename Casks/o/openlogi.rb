cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.24"
  sha256 arm:   "172cd4dbca1c84976e2f03385a99733141a89f73bfe6612a4028bdba92818048",
         intel: "a2392ed67a34347e29bba87a75d2e5f5c03fa89dfbe36438cec416dc2826cfc8"

  url "https://updates.openlogi.org/releases/v#{version}/OpenLogi-v#{version}-macos-#{arch}.dmg"
  name "OpenLogi"
  desc "Local-first alternative to Logitech Options+ for HID++ devices"
  homepage "https://openlogi.org/"

  livecheck do
    url "https://github.com/AprilNEA/OpenLogi"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "OpenLogi.app"
  binary "#{appdir}/OpenLogi.app/Contents/MacOS/openlogi"

  zap trash: [
    "~/.config/openlogi",
    "~/.local/share/openlogi",
    "~/Library/Caches/org.openlogi.openlogi",
    "~/Library/Preferences/org.openlogi.openlogi.plist",
    "~/Library/Saved Application State/org.openlogi.openlogi.savedState",
  ]
end
