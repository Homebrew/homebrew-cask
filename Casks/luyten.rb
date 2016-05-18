cask 'luyten' do
  version '0.4.7'
  sha256 '612bd58de0d3ef23fbb9803d302f0af7d3f03e5fcf06cadd69521f0e57637045'

  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom',
          checkpoint: '9ecdaf5f2f3ace93eb6df32903e0e39db44fb4901ee761e8626f4cab3a6cf6fd'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'
  license :apache

  app 'Luyten.app'
end
