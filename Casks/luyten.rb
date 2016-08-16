cask 'luyten' do
  version '0.4.8'
  sha256 '5476171d2d0aa1b42f365dfe6372f816c9fbbc8232945f01418709c92e6ab9f5'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom',
          checkpoint: '1396a2f45a760d8515b942d2f68b7325da2715310d6e60ebc71993ead2fc6e0c'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'
  license :apache

  app 'Luyten.app'
end
