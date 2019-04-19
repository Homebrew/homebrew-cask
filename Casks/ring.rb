cask 'ring' do
  version '2.0.0'
  sha256 '44c24a87a9f2ef154eed4bf387cffd800adeb309dc9cac80c95abb507f7fc10d'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
