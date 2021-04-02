cask "audius" do
  version "0.24.11"
  sha256 "bdcc20dbbcc835c0a2a200eace1c2bca443499f6289e621e0d3fc882a5b7c147"

  url "https://download.audius.co/Audius-#{version}.dmg"
  name "Audius"
  desc "Music streaming and sharing platform"
  homepage "https://audius.co/"

  livecheck do
    url "https://s3-us-west-1.amazonaws.com/download.audius.co/latest-mac.yml"
    strategy :electron_builder
  end

  app "Audius.app"

  zap trash: [
    "~/Library/Application Support/Audius",
    "~/Library/Logs/Audius",
    "~/Library/Saved Application State/co.audius.app.savedState",
  ]
end
