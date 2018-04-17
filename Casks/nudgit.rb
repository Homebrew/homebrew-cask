cask 'nudgit' do
  version '1.1'
  sha256 '7abeabd7d7029aa20c76495b20ec3aeafff171be5a1c6d58baed90565c062776'

  url "http://nudg.it/nudg.it%20#{version}.zip"
  appcast 'http://nudg.it/',
          checkpoint: 'bee8b2b3b2c5bc049195a738ab4ee7e05875c5f77d6230c3e61e84318450dab0'
  name 'Nudg.it'
  homepage 'https://nudg.it/'

  app "nudgit #{version}/nudg.it.app"
end
