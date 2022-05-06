cask "quicksync" do
  version "4.4.3,123"
  sha256 "fb7d84bad2e917114148f2b9574fecaaaec1715311eb7dd67030bb8833264e33"

  url "https://cms.gigaset.com/macsw/gqs/leopard/QuickSync_#{version.csv.first}.zip"
  name "QuickSync"
  desc "Syncing software for Gigaset products"
  homepage "https://www.gigaset.com/en_en/cms/start/service/support-detail/gigaset-quicksync-mac-version.html"

  livecheck do
    url "https://cms.gigaset.com/macsw/gqs/leopard/appcast.xml"
    strategy :sparkle
  end

  app "QuickSync.app"
end
