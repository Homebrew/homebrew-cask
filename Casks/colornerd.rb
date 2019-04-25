cask 'colornerd' do
  version :latest
  sha256 :no_check

  url "https://github.com/jpederson/colornerd.mac/raw/master/Colornerd.app.zip"
  name 'Colornerd'
  homepage 'https://jpederson.com/colornerd/'

  app 'Colornerd.app'
end
