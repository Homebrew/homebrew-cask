cask :v1 => 'scribus' do
  version '1.4.5-r2'
  sha256 'e07be2772e8e1b897d21e636d05d4065af17757d33b85022fac3c0f99fdc6b63'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/scribus/scribus/#{version}/scribus-#{version}.dmg"
  name 'Scribus'
  homepage 'http://www.scribus.net/canvas/Scribus'
  license :gpl

  app 'Scribus.app'
end
