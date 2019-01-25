cask 'remembear' do
  version '1.2.5'
  sha256 'c80dd7f00a7c824e8f3e311146bf5557fdf82a6ebd5a45653d1e693f2eb4a55d'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
