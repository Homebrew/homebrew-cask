cask "ente" do
  version "1.7.4"
  sha256 "26091de27ce1f8bd331c4d8484b58b6b359e0a6dee2b0823be6c3abb0dee34a0"

  url "https://github.com/ente-io/photos-desktop/releases/download/v#{version}/ente-#{version}-universal.dmg",
      verified: "github.com/ente-io/photos-desktop/"
  name "Ente"
  desc "Desktop client for Ente Photos"
  homepage "https://ente.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
