cask 'remembear' do
  version '1.2.4'
  sha256 'e2b04f0b402f908e42622475c2ba6590608d8244ccd4eaee53f21d515fec4554'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
