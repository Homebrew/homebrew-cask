cask 'quicksync' do
  version '4.0'
  sha256 'afc5ee6705146ee2a83b73de0f6069e3e1d7c648639406c16615a4bde14e8a57'

  url "https://gse.gigaset.com/fileadmin/gigaset/images/CORE/QuickSync/Mac_#{version}/QuickSync.dmg"
  appcast 'https://www.gigaset.com/hq_en/cms/service/support-detail/gigaset-quicksync-mac-version.html'
  name 'QuickSync'
  homepage 'https://www.gigaset.com/hq_en/cms/home/support/support/downloads/quicksync/quicksync-for-mac.html'

  app 'QuickSync.app'
end
