cask 'play' do
  version '2.0.8'
  sha256 'b7c69c9149ddc46ed04020cbf87e4036d3d862584ad0da5f01044e0c1bdfa8c5'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: '918770f4ae2268efbf810b53e80ade1eb3795eebd2e5038ef7387f4991ca2f92'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap delete: '~/Library/Caches/Play',
      trash:  '~/Library/Application Support/Play'
end
