cask "ente" do
  version "1.6.39"
  sha256 "3c7e5786c96936f9d1d30642868b504f0c28e0e3daa5c30d8f70d90cf46fc4d0"

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
