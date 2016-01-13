cask 'sidplay' do
  version :latest
  sha256 :no_check

  # twinbirds.com is the official download host per the vendor homepage
  url 'http://www.twinbirds.com/sidplay/SIDPLAY4.zip'
  appcast 'http://www.sidmusic.org/sidplay/mac/sidplay_appcast.xml',
          :checkpoint => 'b76e236f3dcca61d0a82c39d2e8449b7995c84e2f2546b1bd7958459c14cc186'
  name 'SIDPLAY'
  homepage 'http://www.sidmusic.org/sidplay/mac/'
  license :gpl

  app 'SIDPLAY.app'
end
