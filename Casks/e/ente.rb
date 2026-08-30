cask "ente" do
  version "1.7.27"
  sha256 "13430c4c2a01150bdca8fb8fd180a270428f33c46a7be9956e79e1b408d486d7"

  url "https://github.com/ente-io/photos-desktop/releases/download/v#{version}/ente-#{version}-universal.dmg"
  name "Ente"
  desc "Desktop client for Ente Photos"
  homepage "https://ente.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "ente.app"

  zap trash: [
    "~/Library/Application Support/ente",
    "~/Library/Logs/ente",
    "~/Library/Preferences/io.ente.bhari-frame.helper.plist",
    "~/Library/Preferences/io.ente.bhari-frame.plist",
    "~/Library/Saved Application State/io.ente.bhari-frame.savedState",
  ]
end
