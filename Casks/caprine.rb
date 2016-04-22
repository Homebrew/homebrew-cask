cask 'caprine' do
  version '1.2.2'
  sha256 '9c9328e9072ecd991fadc0cf19c7dd94de55bf31cc12a20a99d3e307c2b89252'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '5d44d90c8bd4dcc6bd8c54714ff0bed8edda5c019474af9a26d1728a3d87b70e'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
