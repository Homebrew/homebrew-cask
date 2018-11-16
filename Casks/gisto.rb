cask 'gisto' do
  version '1.10.14'
  sha256 '1c028c8156c59dd2818ba245571c51a4d1d75f7b81a5ab409c517d9cad728782'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
