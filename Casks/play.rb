cask 'play' do
  version '2.0.11'
  sha256 '5c2aba096705afb89714bbe666dce1949039cc9bf551b3fa812db6096ba43b2c'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: '28a81faf794a167b2c293bddd45188cd6be2bd2f1a81d79536d87fbbb557409f'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap delete: '~/Library/Caches/Play',
      trash:  '~/Library/Application Support/Play'
end
