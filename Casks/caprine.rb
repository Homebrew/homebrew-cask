cask :v1 => 'caprine' do
  version '0.2.1'
  sha256 'b3395729862683d95d7e414811ded44728fb442eadedf1ee28273df129abac90'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
