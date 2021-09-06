cask "audius" do
  version "0.24.28"
  sha256 "fe21b257449058e7c4196366adf14600eef67fe78ae35c249313547f8a374e04"

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
    "~/Library/Logs/Audius",
    "~/Library/Saved Application State/co.audius.app.savedState",
  ]
end
