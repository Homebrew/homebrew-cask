cask "ente" do
  version "1.6.50"
  sha256 "6c816b321a6331f9f025ce57303042faf1c63221931c13760a1c2ccfb1d5c2e1"

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
