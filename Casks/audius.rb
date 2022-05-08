cask "audius" do
  version "1.1.6"
  sha256 "ddf44ef34b76ed311ad2f45cdbeb108dd2b9456476f12601fece9527ee131ac3"

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
