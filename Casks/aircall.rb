cask 'aircall' do
  version '1.4.10'
  sha256 'c70ae1bd8913ca9c3b1dd5037d600f4c9e901bc38a17829fb11b7f1d4579a5eb'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '891aa7db25ac73b5d2c654381b8bae5c9c981629b0c51abd2096e6c9946214c1'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
