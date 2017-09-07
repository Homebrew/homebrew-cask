cask 'cool-retro-term' do
  version '1.0.0'
  sha256 'ccb1c78b54e1c2dcde1a660730da2b0f6d2e4213e3748e5ad81a5653926c920e'

  url "https://github.com/Swordfish90/cool-retro-term/releases/download/v#{version}/cool-retro-term#{version.delete('.')}.dmg"
  appcast 'https://github.com/Swordfish90/cool-retro-term/releases.atom',
          checkpoint: 'a789607a40af3f9b0c7c534b27c781b48b221fc14fb3ec132d68acc0b79eddac'
  name 'cool-retro-term'
  homepage 'https://github.com/Swordfish90/cool-retro-term'

  app 'cool-retro-term.app'
end
