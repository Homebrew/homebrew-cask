cask "audius" do
  version "0.24.38"
  sha256 "c342d6a656f47282486baa860db1487fec24083745a2bea18cfb9e378e6ade26"

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
