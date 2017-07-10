cask 'caprine' do
  version '2.5.0'
  sha256 'fef69ef1f09623ba429bf90b940aaea59f93e23225e0cb53f23702b7d3c14062'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'eeadbb7e6220e50e1140bac345bdbad0f31832d5e143af1839eb113d23f29541'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
