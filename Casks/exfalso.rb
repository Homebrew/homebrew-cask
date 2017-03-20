cask 'exfalso' do
  version '3.8.1'
  sha256 '8184024910a6d2914cb30bf662f31a69a1bad077f6c0c909269f9dd4e11462e3'

  # bitbucket.org/lazka/quodlibet was verified as official when first introduced to the cask
  url "https://bitbucket.org/lazka/quodlibet/downloads/ExFalso-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom',
          checkpoint: '2c4aa5c46bf6b4ecb5a4321de3d63f015520f48ade3de3720a86a92a18143170'
  name 'Ex Falso'
  homepage 'http://quodlibet.readthedocs.io/'

  app 'ExFalso.app'

  zap delete: '~/.quodlibet'
end
