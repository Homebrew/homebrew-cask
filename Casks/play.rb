cask 'play' do
  version '2.0.12'
  sha256 'c59767890d1d7d6347f6b59b51a8c0b4c9b7072a7bcf57d6d798b7aecfb1159c'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: 'feb0a37b0f55bd453c0f37fdb20dfe4cc4b8a5ef1e344204a51b93dacd773366'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap trash: [
               '~/Library/Application Support/Play',
               '~/Library/Caches/Play',
             ]
end
