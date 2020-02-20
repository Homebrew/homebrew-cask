cask 'gisto' do
  version '1.12.14'
  sha256 'de3a4c513ad62aaa59bbe0158840ead5c6a037f23d1a72fb6800edbc618e8440'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
