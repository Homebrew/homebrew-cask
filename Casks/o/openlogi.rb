cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.20"
  sha256 arm:   "88e4f92eee993cf9a83e95ee0ad5fb8ec6888816f8f665c63a2c4634fcae26e1",
         intel: "d8770698c7185a8923bb4bba9c0455aaeaf1e28750434a4b7c0710753ea117d0"

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
