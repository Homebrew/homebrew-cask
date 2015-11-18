cask :v1 => 'caprine' do
  version '0.3.0'
  sha256 '47dfb30524f5042717e5722e0dab32836438d6530f607471ef4ce2b330ec54ff'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
