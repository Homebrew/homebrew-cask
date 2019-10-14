cask 'luyten' do
  version '0.5.4'
  sha256 'c7191d822d6a9ab08e383c7038acf0aaf3885e332fdaf204c14b3c550a28120a'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'

  app 'Luyten.app'
end
