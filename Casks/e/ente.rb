cask "ente" do
  version "1.6.40"
  sha256 "41d29cd60f60bfdb69bcafb9722fa7abceaf3e3e9e0ccb4c5621cd1b95ec84cf"

  url "https://github.com/ente-io/photos-desktop/releases/download/v#{version}/ente-#{version}.dmg",
      verified: "github.com/ente-io/photos-desktop/"
  name "Ente"
  desc "Desktop client for Ente"
  homepage "https://ente.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ente.app"

  zap trash: [
    "~/Library/Application Support/ente",
    "~/Library/Logs/ente",
    "~/Library/Preferences/io.ente.bhari-frame.plist",
    "~/Library/Preferences/io.ente.bhari-frame.helper.plist",
    "~/Library/Saved Application State/io.ente.bhari-frame.savedState",
  ]
end
