cask 'shuttle' do
  version '1.2.7'
  sha256 '529f0c33d272a112aac3c99d023c615fbe704e6132377599c1eb1c38aaad80da'

  # github.com/fitztrev/shuttle was verified as official when first introduced to the cask
  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: '7c389e357ae08cb0f7d9e20108fe239da609514d09c1fbcb94192998f570b6c5'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'

  app 'Shuttle.app'

  zap delete: '~/.shuttle.json'
end
