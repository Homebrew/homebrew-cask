cask 'entonnoir' do
  version :latest
  sha256 :no_check

  url 'http://tools.chocoflop.com/downloads/Entonnoir_latest.php'
  appcast 'http://tools.chocoflop.com/appcasts/entonappcast.xml',
          :checkpoint => 'bdb2060920153b86a23fb016768d653453ddf6b40bac2316e822c7b5b6c18eb3'
  name 'Entonnoir'
  homepage 'http://tools.chocoflop.com/entonnoir_en.html'
  license :closed

  app 'Entonnoir.app'
end
