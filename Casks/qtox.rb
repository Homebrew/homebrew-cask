cask 'qtox' do
  version '1.10.2'
  sha256 'dd82521fc2e8f5f7a521c88e22be22f94965c79ea863dca7c55ccdff8d9a6ba6'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: '96844650df8a0add7996e9a0538cb3de3279943321631910df4b44fdc65f5ff8'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
