cask 'quicksync' do
  version '3.3'
  sha256 'e3e64020e952dee692811119f966e1cf62bfc48c5ef110a39e5d92a20e9d0a3a'

  url "http://www.gigaset.com/fileadmin/gigaset/images/CORE/QuickSync/Mac_V#{version}/QuickSync.dmg"
  name 'QuickSync'
  homepage 'http://www.gigaset.com/en_US/kundenservice/downloads/quicksync/quicksync-fuer-mac.html'
  license :gratis

  app 'QuickSync.app'
end
