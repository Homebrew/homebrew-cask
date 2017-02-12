cask 'sierra-cache-cleaner' do
  version :latest
  sha256 :no_check

  url 'http://www.northernsoftworks.com/downloads/scc.dmg'
  name 'Sierra Cache Cleaner'
  name 'SCC'
  homepage 'http://www.northernsoftworks.com/sierracachecleaner.html/'

  depends_on macos: '<= :sierra'
  if MacOS.version >= :lion
    app 'Sierra Cache Cleaner.app'
  else
    app 'Sierra Cache Cleaner Legacy.app'
  end
end
