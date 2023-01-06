cask "audius" do
  version "1.5.4"
  sha256 "6592e7c1d7d76f2b664ffa5640e88da526e3b0203185c89e2321463181d0bc61"

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
