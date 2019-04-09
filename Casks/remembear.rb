cask 'remembear' do
  version '1.4.0'
  sha256 '1d0ea7018567b85b98ef332ea47d9c8cffc5fbbb8772986f3a058474813f6456'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
