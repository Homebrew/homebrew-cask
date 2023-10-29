cask "ente" do
  version "1.6.49"
  sha256 "a4a33d7de258f9cd6de6b2a37d0f3aafd8206218f79853bcfbcb723a218032bb"

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
