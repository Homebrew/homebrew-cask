cask "quicksync" do
  version "4.2.5"
  sha256 "3d112da18e13b4bd0f4c98b812cc061e227d149f7dc9fc623d35ef0b07634d76"

  url "https://gse.gigaset.com/fileadmin/gigaset/images/CORE/QuickSync/Mac_#{version}/QuickSync.dmg"
  name "QuickSync"
  desc "Syncing software for Gigaset products"
  homepage "https://www.gigaset.com/en_en/cms/start/service/support-detail/gigaset-quicksync-mac-version.html"

  livecheck do
    url "https://cms.gigaset.com/macsw/gqs/leopard/appcast.xml"
    strategy :sparkle
  end

  app "QuickSync.app"
end
