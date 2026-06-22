cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.15"
  sha256 arm:   "fd1f3b4627ee40e6d0c66a6c55b50a720638b13255252eab93e8b9d7837981c6",
         intel: "af1e733dc8d30fc896529db07c660b814fd7f5089994b1c9b26cf197314c98b7"

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
