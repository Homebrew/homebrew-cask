cask 'near-lock' do
  version '3.0'
  sha256 'a8678d7f81993e9be2a26aacbe3b8ec65cc4ca6dbd53157022c6726d1abd24f8'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          :sha256 => '7f1915c0978d5e807e9e2f3fa1c5707e5cc3dcc313c393cc614aaf4a9dee8ec1'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
