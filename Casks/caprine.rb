cask 'caprine' do
  version '1.1.0'
  sha256 'b853864169111509fe6329d8a9a6f78542a6f024ee086146f92ee978755a8ff8'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'ffe1b6632b19a9538447f4258fd465c82b91e0ff6d026d7762912df785ec7fe9'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
