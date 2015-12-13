cask :v1 => 'caprine' do
  version '0.4.0'
  sha256 '0cb1199c9f80d8ff26337c507fccece3341cfe454b6adfcadff7c1ed93ed0221'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
