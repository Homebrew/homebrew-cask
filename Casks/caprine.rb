cask 'caprine' do
  version '2.6.0'
  sha256 '60d7e5334173ece5a77b4b431e7642534d89dacf303c036d5c214d0ac5da5294'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'eeadbb7e6220e50e1140bac345bdbad0f31832d5e143af1839eb113d23f29541'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
