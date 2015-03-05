cask :v1 => 'all2mp3' do
  version :latest
  sha256 :no_check

  url 'http://www.tresrrr.com/Program/All2MP3.zip'
  name 'All2MP3'
  appcast 'http://www.tresrrr.com/All2MP3/Appcast.xml'
  homepage 'http://www.tresrrr.com/All2MP3/ENGLISH.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'All2MP3.app'
end
