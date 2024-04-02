cask "ente" do
  version "1.6.63"
  sha256 "3598e03ab794e023f50711458d22438a26c23bc1211f2c867406fc1d0b08ee71"

  url "https://github.com/ente-io/photos-desktop/releases/download/v#{version}/ente-#{version}-universal.dmg",
      verified: "github.com/ente-io/photos-desktop/"
  name "Ente"
  desc "Desktop client for Ente Photos"
  homepage "https://ente.io/"

  auto_updates true

  app "ente.app"

  zap trash: [
    "~/Library/Application Support/ente",
    "~/Library/Logs/ente",
    "~/Library/Preferences/io.ente.bhari-frame.helper.plist",
    "~/Library/Preferences/io.ente.bhari-frame.plist",
    "~/Library/Saved Application State/io.ente.bhari-frame.savedState",
  ]
end
