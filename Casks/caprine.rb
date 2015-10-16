cask :v1 => 'caprine' do
  version '0.1.2'
  sha256 '38d8df342713829cf11277ce29f256d2cdb810cb17f34e10b91257f39c4037c0'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
