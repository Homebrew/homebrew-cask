cask "audius" do
  version "1.5.182"
  sha256 "7bd0cdcfd36922dc2cc5c019f178f6ba8914b8df507650d1ebfb6b75a09c0fe1"

  url "https://download.audius.co/Audius-#{version}-arm64.dmg"
  name "Audius"
  desc "Music streaming and sharing platform"
  homepage "https://audius.co/"

  livecheck do
    url "https://download.audius.co/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Audius.app"

  zap trash: [
    "~/Library/Application Support/Audius",
    "~/Library/Application Support/Caches/audius-client-updater",
    "~/Library/Logs/Audius",
    "~/Library/Saved Application State/co.audius.app.savedState",
  ]
end
