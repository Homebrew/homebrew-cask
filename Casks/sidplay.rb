cask 'sidplay' do
  version :latest
  sha256 :no_check

  # twinbirds.com is the official download host per the vendor homepage
  url 'http://www.twinbirds.com/sidplay/SIDPLAY4.zip'
  appcast 'http://www.sidmusic.org/sidplay/mac/sidplay_appcast.xml',
          :checkpoint => 'be5c8b3caaf278d8cb6965384b3208f5e72dc4181eeb686e6a1e1c533666651e'
  name 'SIDPLAY'
  homepage 'http://www.sidmusic.org/sidplay/mac/'
  license :gpl

  app 'SIDPLAY.app'
end
