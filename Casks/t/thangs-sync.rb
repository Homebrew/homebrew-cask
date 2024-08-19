cask "thangs-sync" do
  version "1.8.3"
  sha256 "55d386a03ac37e83fd672b95d895058051c9f59ca4551c6ac878032795fb84ce"

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
