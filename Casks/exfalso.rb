cask 'exfalso' do
  version '3.8.1'
  sha256 '8184024910a6d2914cb30bf662f31a69a1bad077f6c0c909269f9dd4e11462e3'

  # bitbucket.org was verified as official when first introduced to the cask
  url 'https://bitbucket.org/lazka/quodlibet/downloads/ExFalso-3.8.1.dmg'
  name 'Ex Falso'
  homepage 'http://quodlibet.readthedocs.io/'

  app 'ExFalso.app'

  zap delete: '~/.quodlibet'
end
