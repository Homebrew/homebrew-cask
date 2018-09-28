cask 'gisto' do
  version '1.10.5'
  sha256 'e3def1a5950b3c34db6393e8e78316445311f00079e073fc875876b21f5e1a0b'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
