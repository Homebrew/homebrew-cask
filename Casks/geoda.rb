cask 'geoda' do
  version '1.12.0.0'
  sha256 '73c88679a1e51aabc634aa2cb42ba4de97f1ddedd41e6d8fe8e212fca34d94cc'

  # s3-us-west-2.amazonaws.com/geodasoftware was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/geodasoftware/GeoDa#{version}-Installer.dmg"
  appcast 'https://github.com/GeoDaCenter/geoda/releases.atom',
          checkpoint: 'cb0aab92920cfb28255679102b3e94f259611e9258fcf0f333cc9ce7ecc4ea1d'
  name 'GeoDa'
  homepage 'https://geodacenter.github.io/'

  app 'GeoDa.app'

  zap delete: '~/Library/Saved Application State/edu.asu.geodacenter.GeoDa.savedState'
end
