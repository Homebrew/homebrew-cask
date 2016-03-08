cask 'recd' do
  version '1.4.0'
  sha256 '24c17b35bd819ce8c7094fa2170b2c581a44eec1baee70c9cf5720dfb5f0bbd5'

  url "https://github.com/aeewhite/Recd/releases/download/v#{version}/Rec.d-Mac-v#{version}.dmg"
  appcast 'https://github.com/aeewhite/recd/releases.atom',
          checkpoint: '9a2dabcb234cbdf2453b1cd345a7d7ce324e8a81499e8a271276506fcd6b71c6'
  name "Rec'd"
  homepage 'https://github.com/aeewhite/Recd'
  license :oss

  app "Rec'd.app"
end
