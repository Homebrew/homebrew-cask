cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.16"
  sha256 arm:   "1c1c5769414932fcea5f82ea55b1e98a5452dcbcec31d918ede05d1b11a3e01b",
         intel: "199ba0af9b3c57ce1698a50dd90dbbaa01c00b52c230b1985b636601695e4aa1"

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

  zap trash: [
    "~/.config/openlogi",
    "~/.local/share/openlogi",
    "~/Library/Caches/org.openlogi.openlogi",
    "~/Library/Preferences/org.openlogi.openlogi.plist",
    "~/Library/Saved Application State/org.openlogi.openlogi.savedState",
  ]
end
