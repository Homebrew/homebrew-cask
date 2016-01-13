cask 'entonnoir' do
  version :latest
  sha256 :no_check

  url 'http://tools.chocoflop.com/downloads/Entonnoir_latest.php'
  appcast 'http://tools.chocoflop.com/appcasts/entonappcast.xml',
          :sha256 => '665b49e1dbb3a58b321d1b9a696e31727b408200de2d950ad53cd18155beae13'
  name 'Entonnoir'
  homepage 'http://tools.chocoflop.com/entonnoir_en.html'
  license :closed

  app 'Entonnoir.app'
end
