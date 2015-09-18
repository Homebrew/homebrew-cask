cask :v1 => 'caprine' do
  version '0.1.1'
  sha256 'd5a104eadaad75194f089d7e1f6923f5f20fcf3ebfdc6848017132632c1562b3'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
