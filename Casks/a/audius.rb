cask "audius" do
  version "1.5.61"
  sha256 "662f67f2c488e740564cb2b18d1f53046612be4a1d2442c31dceaba070d85d3c"

  url "https://download.audius.co/Audius-#{version}.dmg"
  name "Audius"
  desc "Music streaming and sharing platform"
  homepage "https://audius.co/"

  livecheck do
    url "https://s3-us-west-1.amazonaws.com/download.audius.co/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Audius.app"

  zap trash: [
    "~/Library/Application Support/Audius",
    "~/Library/Application Support/Caches/audius-client-updater",
    "~/Library/Logs/Audius",
    "~/Library/Saved Application State/co.audius.app.savedState",
  ]
end
