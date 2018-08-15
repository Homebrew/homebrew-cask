cask 'gaston' do
  version :latest
  sha256 :no_check

  url 'http://leofink.de/gaston/gaston.zip'
  name 'Gaston'
  homepage 'http://leofink.de/gaston/'

  app 'Gaston.app'

  zap trash: [
               '~/Library/Caches/com.leofink.Gaston',
               '~/Library/Saved Application State/com.leofink.Gaston.savedState',
             ]
end
