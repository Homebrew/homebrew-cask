cask 'quicksync' do
  version '4.2.5'
  sha256 '82029b78fe6638f23fa718f1725543375b8a80ee4e554ea86cae347ac3326dc2'

  url "https://gse.gigaset.com/fileadmin/gigaset/images/CORE/QuickSync/Mac_#{version}/QuickSync.dmg"
  appcast 'https://www.gigaset.com/hq_en/cms/service/support-detail/gigaset-quicksync-mac-version.html'
  name 'QuickSync'
  homepage 'https://www.gigaset.com/hq_en/cms/home/support/support/downloads/quicksync/quicksync-for-mac.html'

  app 'QuickSync.app'
end
