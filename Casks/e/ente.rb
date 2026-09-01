cask "ente" do
  version "1.7.28"
  sha256 "effae9a4c991c7651318cd1daf4046f3d66171890b6164177313cd1a4735f459"

  url "https://github.com/ente-io/photos-desktop/releases/download/v#{version}/ente-#{version}-universal.dmg"
  name "Ente"
  desc "Desktop client for Ente Photos"
  homepage "https://ente.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ente.app"

  zap trash: [
    "~/Library/Application Support/ente",
    "~/Library/Logs/ente",
    "~/Library/Preferences/io.ente.bhari-frame.helper.plist",
    "~/Library/Preferences/io.ente.bhari-frame.plist",
    "~/Library/Saved Application State/io.ente.bhari-frame.savedState",
  ]
end
