cask 'play' do
  version '2.0.9'
  sha256 'e6197879e2c36ea6157b242dfd7d5558f4980ce39eaae2b1131242b6be6533c1'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: 'f1356020301196f8f9be551d68fae2adc8cf798e70e09f94fc24c6698654cc9f'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap delete: '~/Library/Caches/Play',
      trash:  '~/Library/Application Support/Play'
end
