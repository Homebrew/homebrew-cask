cask 'gisto' do
  version '1.12.8'
  sha256 '97bf0045abb2c3c90034ec12fdaf9697acb32e79c4b198f3dfe8cfe1847ae48b'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
