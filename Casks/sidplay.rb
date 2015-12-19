cask 'sidplay' do
  version :latest
  sha256 :no_check

  # twinbirds.com is the official download host per the vendor homepage
  url 'http://www.twinbirds.com/sidplay/SIDPLAY4.zip'
  appcast 'http://www.sidmusic.org/sidplay/mac/sidplay_appcast.xml'
  name 'SIDPLAY'
  homepage 'http://www.sidmusic.org/sidplay/mac/'
  license :gpl

  app 'SIDPLAY.app'
end
