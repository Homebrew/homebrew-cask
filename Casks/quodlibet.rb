cask 'quodlibet' do
  version '4.0.2'
  sha256 '6f9a98926e7e62cb26a34b41689616d60f709877fe20984af018843e76274060'

  # github.com/quodlibet/quodlibet was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/QuodLibet-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom',
          checkpoint: 'dc693ef4c5916de3d359d5503dbb41daecd2c1c586931b5cfde48c80da3dd7bd'
  name 'Quod Libet'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'QuodLibet.app'

  zap trash: '~/.quodlibet'
end
