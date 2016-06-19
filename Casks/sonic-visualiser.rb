cask 'sonic-visualiser' do
  version '2.5.0.1'
  sha256 'f271f685c2198924bb90355b856673cb8c526368aa2ce1251e37b4bab6c1870b'

  # ac.uk is the official download host per the vendor homepage
  url "https://code.soundsoftware.ac.uk/attachments/download/1680/Sonic%20Visualiser-#{version}.dmg"
  name 'Sonic Visualiser'
  homepage 'http://www.sonicvisualiser.org/'
  license :gpl

  app 'Sonic Visualiser.app'
end
