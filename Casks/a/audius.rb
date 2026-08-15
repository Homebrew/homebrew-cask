cask "audius" do
  arch arm: "-arm64"

  on_arm do
    version "1.5.180"
    sha256 "20eab1e665aa6670d67e8eb28d9473a831de156028e7698ba70299c145886461"

    livecheck do
      url "https://download.audius.co/latest-mac.yml"
      strategy :electron_builder
    end

    depends_on macos: :monterey
  end
  on_intel do
    version "1.5.66"
    sha256 "ed894a7eca86e9e858454f125c69b39ff2a8f8a5d27f637aa444caba7bfa4855"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :catalina
  end

  url "https://download.audius.co/Audius-#{version}#{arch}.dmg"
  name "Audius"
  desc "Music streaming and sharing platform"
  homepage "https://audius.co/"

  auto_updates true
  depends_on :macos

  app "Audius.app"

  zap trash: [
    "~/Library/Application Support/Audius",
    "~/Library/Application Support/Caches/audius-client-updater",
    "~/Library/Logs/Audius",
    "~/Library/Saved Application State/co.audius.app.savedState",
  ]
end
