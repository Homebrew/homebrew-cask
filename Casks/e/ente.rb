cask "ente" do
  version "1.6.57"
  sha256 "d0863da0665ba86384da16be982c6e22cdde82ffba3efc3cdb7abcda3688f7b3"

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
