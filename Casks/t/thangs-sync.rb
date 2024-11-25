cask "thangs-sync" do
  version "1.9.1"
  sha256 "da4cc7959f46b07780cfbf2c97f364a2096828465e874f24df4499037672d498"

  url "https://storage.googleapis.com/production-thangs-public/sync/darwin/latest/Thangs%20Sync-#{version}-mac.zip",
      verified: "storage.googleapis.com/production-thangs-public/"
  name "Thangs Sync"
  desc "Secure, 3D-native revision control in the cloud"
  homepage "https://thangs.com/sync"

  livecheck do
    url "https://storage.googleapis.com/production-thangs-public/sync/darwin/latest/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Thangs Sync.app"

  zap trash: [
    "~/Library/Application Support/thangs-sync-client",
    "~/Library/Preferences/com.ThangsSyncClient.app.plist",
  ]

  caveats do
    requires_rosetta
  end
end
