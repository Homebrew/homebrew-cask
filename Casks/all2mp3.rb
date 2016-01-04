cask 'all2mp3' do
  version :latest
  sha256 :no_check

  url 'http://www.tresrrr.com/Program/All2MP3.zip'
  appcast 'http://www.tresrrr.com/All2MP3/Appcast.xml',
          :sha256 => '1d08335e65da7cf40d1c4a7ba0088e0f39b9c5a4b2e42de95fc9ffa69fb96c7a'
  name 'All2MP3'
  homepage 'http://www.tresrrr.com/All2MP3/ENGLISH.html'
  license :gratis

  app 'All2MP3.app'
end
