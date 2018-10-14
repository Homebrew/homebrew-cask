cask 'remembear' do
  version '1.2.0'
  sha256 '07faffe1633a04e2bfb9b6102eb9a3b9af7353865817fd04cacea2e9149686f4'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
