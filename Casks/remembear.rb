cask 'remembear' do
  version '1.1.0'
  sha256 '158c7b6966ed65fed6f6fb6952f22c4a78427436dc1dc06e5795cc261fc24fcb'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
