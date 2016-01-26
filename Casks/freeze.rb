cask 'freeze' do
  version '1.3'
  sha256 'a93c7342b44bbd1e30acc2c9ed434785f78b602d297627d2ba05f7326d6231be'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: '21c72159f3110653ec1e819791f17d1f9e08b93f441179d93a7a58a0897fb719'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
