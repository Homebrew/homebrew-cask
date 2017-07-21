cask 'exfalso' do
  version '3.9.1'
  sha256 'b438f771a6063788bad4c359bb89b09dfce0dbd698caa485caddf6ed50a94a07'

  # github.com/quodlibet/quodlibet was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/ExFalso-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom',
          checkpoint: '9efb0435388c948603147c16f6b1f4f3e8ee9ca92f73e3dd4549e5fe5b9edf26'
  name 'Ex Falso'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'ExFalso.app'

  zap trash: '~/.quodlibet'
end
