cask "quicksync" do
  version "4.3.3"
  sha256 "9458bee719ca6d19ef84bfb4f1c309e8c509c88c626a71bde1c58b1f02854f38"

  url "https://cms.gigaset.com/macsw/gqs/leopard/QuickSync_#{version}.zip"
  name "QuickSync"
  desc "Syncing software for Gigaset products"
  homepage "https://www.gigaset.com/en_en/cms/start/service/support-detail/gigaset-quicksync-mac-version.html"

  livecheck do
    url "https://cms.gigaset.com/macsw/gqs/leopard/appcast.xml"
    strategy :sparkle
  end

  app "QuickSync.app"
end
