cask 'keeweb' do
  version '1.5.4'
  sha256 '4ec4e2d9bd7bd9a562f0f419d67d3a0e926eab6b82fce3334cfa3f9e96843e89'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '4ad0e816ad5a75a9e8f45519abba391be51c0d16b48608109f2d33d0745c9eb7'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
