cask 'sierra-cache-cleaner' do
  version :latest
  sha256 :no_check

  url 'http://www.northernsoftworks.com/downloads/scc.dmg'
  name 'Sierra Cache Cleaner'
  name 'SCC'
  homepage 'http://www.northernsoftworks.com/sierracachecleaner.html'

  if MacOS.version <= :mountain_lion
    app 'Sierra Cache Cleaner Legacy.app'
  else
    app 'Sierra Cache Cleaner.app'
  end
end
