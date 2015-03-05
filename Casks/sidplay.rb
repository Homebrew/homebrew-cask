cask :v1 => 'sidplay' do
  version :latest
  sha256 :no_check

  # twinbirds.com is the official download host per the vendor homepage
  url 'http://www.twinbirds.com/sidplay/SIDPLAY4.zip'
  appcast 'http://www.sidmusic.org/sidplay/mac/sidplay_appcast.xml'
  name 'SIDPLAY'
  homepage 'http://www.sidmusic.org/sidplay/mac/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SIDPLAY.app'
end
