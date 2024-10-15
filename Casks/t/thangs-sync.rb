cask "thangs-sync" do
  version "1.9.0"
  sha256 "125b1c5e48edd569b8c0ede188144adc26509e694cc12f8b591348ca7ee6d5c3"

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
