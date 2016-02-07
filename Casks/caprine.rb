cask 'caprine' do
  version '0.6.0'
  sha256 'c72f1c2881500ee52c8f6a90e313b6db1a2ad8eb08d11cc4a7097e2b6aa96ed2'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '1269363b16177102f70506fdb97037fbbea8e0a76461ba27bb8d02e39f047380'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
