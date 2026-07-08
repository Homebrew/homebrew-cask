cask "peeku" do
  version "1.7"
  sha256 "fab7e88214255885a0ae7ca62017d31219b843044e39dd3bb75a9b60495403c6"

  url "https://peeku.app/downloads/Peeku-#{version}.dmg"
  name "Peeku"
  desc "Private walk-away lock and desk break coach"
  homepage "https://peeku.app/"

  livecheck do
    url "https://peeku.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Peeku.app"

  uninstall quit: "app.peeku.Peeku"

  zap trash: [
    "~/.config/proximity-lock",
    "~/Library/Group Containers/AVGA7YK5X2.app.peeku.Peeku",
    "~/Library/HTTPStorages/app.peeku.Peeku",
    "~/Library/Logs/peeku-health.log",
    "~/Library/Logs/peeku-lock-events.log",
    "~/Library/Preferences/app.peeku.Peeku.plist",
    "~/Library/Saved Application State/app.peeku.Peeku.savedState",
  ]
end
