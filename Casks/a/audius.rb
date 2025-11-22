cask "audius" do
  arch arm: "-arm64"

  on_arm do
    version "1.5.161"
    sha256 "5ced8f562a65dfa8f5ce7310788792c943d61c326a3b1fae8fbcacd47f62d2e0"

    livecheck do
      url "https://download.audius.co/latest-mac.yml"
      strategy :electron_builder
    end

    depends_on macos: ">= :monterey"
  end
  on_intel do
    version "1.5.66"
    sha256 "ed894a7eca86e9e858454f125c69b39ff2a8f8a5d27f637aa444caba7bfa4855"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :catalina"
  end

  url "https://download.audius.co/Audius-#{version}#{arch}.dmg"
  name "Audius"
  desc "Music streaming and sharing platform"
  homepage "https://audius.co/"

  auto_updates true

  app "Audius.app"

  zap trash: [
    "~/Library/Application Support/Audius",
    "~/Library/Application Support/Caches/audius-client-updater",
    "~/Library/Logs/Audius",
    "~/Library/Saved Application State/co.audius.app.savedState",
  ]
end
