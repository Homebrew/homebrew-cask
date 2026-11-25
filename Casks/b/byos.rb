cask "byos" do
  version "2.3.6"
  sha256 "5e02076733d0eaa9c01c3cf32c707fadf22fc9965251b0661845e1abfc33529a"

  url "https://appupdate.byos.network/apps/mac/stable/updates/InstallByos#{version}.dmg"
  name "Byos"
  desc "Companion app for Byos Secure Edge devices"
  homepage "https://www.byos.io/"

  livecheck do
    url "https://appupdate.byos.network/apps/mac/stable/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Byos.app"

  zap trash: [
    "~/Library/Application Scripts/io.byos.mgatewayclient",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.byos.mgatewayclient.sfl*",
    "~/Library/Caches/io.byos.mgatewayclient",
    "~/Library/Containers/io.byos.mgatewayclient",
  ]
end
