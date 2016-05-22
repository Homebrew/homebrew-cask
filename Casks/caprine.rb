cask 'caprine' do
  version '1.4.1'
  sha256 '87881c770014af172a185ad7579d560fe546975457419ebd217b59ef419d1d96'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'fb7312dd2ea02ec5f36130eeabfd77ec7dea3651061ab9f0c8169b53b5df9eb0'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
