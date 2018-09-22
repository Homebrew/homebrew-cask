cask 'gisto' do
  version '1.10.2'
  sha256 '08d0cd786da752704d5f58a6b40b36a924b149f2aa6abd664e9391b4e2cd90d8'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
