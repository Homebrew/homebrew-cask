cask 'caprine' do
  version '1.8.0'
  sha256 'ea94df271617b26a8e2583dd89d5c2b2e8f7f15da113c4edaa3f0e55e7b67176'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'a24049d9b71e435ec7c4a4f12937bc72a340f39fd0d03c9e7c5507b42b46a630'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  app 'Caprine.app'
end
