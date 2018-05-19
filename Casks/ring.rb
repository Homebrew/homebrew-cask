cask 'ring' do
  version '1.80'
  sha256 'a5fef06526eae64aba299ab827d78658ab543799df9218e404b470be588fa5d7'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml',
          checkpoint: 'a4ede0df00e6630ca6ab247e50c2f1970b93b0678f331043a4627d202497b897'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
