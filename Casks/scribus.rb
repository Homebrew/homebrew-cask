cask :v1 => 'scribus' do
  version '1.4.5'
  sha256 '2cae3e4afa552e2db4209e3e3efae816202bb3055857b57bdcd60e1b2eca410c'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/scribus/scribus/#{version}/scribus-#{version}.dmg"
  name 'Scribus'
  homepage 'http://www.scribus.net/canvas/Scribus'
  license :gpl

  app 'Scribus.app'
end
