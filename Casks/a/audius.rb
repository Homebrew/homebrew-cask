cask "audius" do
  version "1.5.180"
  sha256 "20eab1e665aa6670d67e8eb28d9473a831de156028e7698ba70299c145886461"

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
