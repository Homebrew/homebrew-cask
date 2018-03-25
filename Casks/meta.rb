cask 'meta' do
  version '1.8.2'
  sha256 '49814e64396a08775e69ac15d26c6abaa68622967dab312e3f80097eb4120498'

  url 'https://www.nightbirdsevolve.com/meta/updates/latest/'
  appcast 'https://www.nightbirdsevolve.com/meta/updates/',
          checkpoint: '7a229c6bac7da7e17f96015c6dcf56ab677387639d18e56b869c2fa10f556678'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
