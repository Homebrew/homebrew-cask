cask 'scribus' do
  version '1.4.6'
  sha256 'db818ae3a69ca16c1b3fb873b55903062f7b81f42d7adcc64a61ee93bf95727e'

  # downloads.sourceforge.net/project/scribus was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/scribus/scribus/#{version}/scribus-#{version}.dmg"
  name 'Scribus'
  homepage 'http://www.scribus.net/canvas/Scribus'
  license :gpl

  app 'Scribus.app'
end
