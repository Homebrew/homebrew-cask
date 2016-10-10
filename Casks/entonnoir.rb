cask 'entonnoir' do
  version '1.01'
  sha256 '99c69e443c4f710ef1322f3a872b8e57cb31bc7219e353cac5a57f3334cb1771'

  url 'http://tools.chocoflop.com/downloads/Entonnoir_latest.php'
  appcast 'http://tools.chocoflop.com/appcasts/entonappcast.xml',
          checkpoint: 'bdb2060920153b86a23fb016768d653453ddf6b40bac2316e822c7b5b6c18eb3'
  name 'Entonnoir'
  homepage 'http://tools.chocoflop.com/entonnoir_en.html'

  app 'Entonnoir.app'
end
