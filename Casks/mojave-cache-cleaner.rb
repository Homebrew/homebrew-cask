cask 'mojave-cache-cleaner' do
  version :latest
  sha256 :no_check

  url 'https://www.northernsoftworks.com/downloads/mcc.dmg'
  name 'Mojave Cache Cleaner'
  name 'MCC'
  homepage 'https://www.northernsoftworks.com/mojavecachecleaner.html'

  if MacOS.version <= :mountain_lion
    app 'Mojave Cache Cleaner Legacy.app'
  else
    app 'Mojave Cache Cleaner.app'
  end
end
