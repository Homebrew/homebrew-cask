cask 'cool-retro-term' do
  version '1.0.0'
  sha256 'ccb1c78b54e1c2dcde1a660730da2b0f6d2e4213e3748e5ad81a5653926c920e'

  url "https://github.com/Swordfish90/cool-retro-term/releases/download/v#{version}/cool-retro-term#{version.delete('.')}.dmg"
  appcast 'https://github.com/Swordfish90/cool-retro-term/releases.atom',
          checkpoint: 'eb9ed3cb84563876d607d15d5d262e750d5d9210b6ee8ea1621ea0e261b0c646'
  name 'cool-retro-term'
  homepage 'https://github.com/Swordfish90/cool-retro-term'

  app 'cool-retro-term.app'
end
