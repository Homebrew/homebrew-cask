cask 'ring' do
  version '2.6.0'
  sha256 'c598a87f10bf41926d67e7aa8a43bc1a0f1f50b9d2d07a5184e397ec727e118d'

  # ring-mac-app-assets.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
