cask :v1 => 'entonnoir' do
  version :latest
  sha256 :no_check

  url 'http://tools.chocoflop.com/downloads/Entonnoir_latest.php'
  homepage 'http://tools.chocoflop.com/entonnoir_en.html'
  license :closed

  app 'Entonnoir.app'
end

