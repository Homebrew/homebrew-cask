cask :v1 => 'entonnoir' do
  version :latest
  sha256 :no_check

  url 'http://tools.chocoflop.com/downloads/Entonnoir_latest.php'
  name 'Entonnoir'
  appcast 'http://tools.chocoflop.com/appcasts/entonappcast.xml',
          :sha256 => 'd6a7bd0736c64eb63242e57bb0a8d6157524a64ca5d6d250c6cfc09630c58890'
  homepage 'http://tools.chocoflop.com/entonnoir_en.html'
  license :closed

  app 'Entonnoir.app'
end
