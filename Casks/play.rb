cask 'play' do
  version '2.0.7'
  sha256 '38be5271a5bfe79168c3b57164f75a908dcec88f2a53607bef0b6516d90183b2'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: '5d4d468b6c0a2e4a17e8257400da857f92e1a2e338ae7d17a3a56a534361b3d4'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap delete: '~/Library/Caches/Play',
      trash:  '~/Library/Application Support/Play'
end
