cask 'gisto' do
  version '1.12.11'
  sha256 '79604a4ded5ca068e606bdbfa785b0d682b7d1c07e071ffb681674859b3f6d3e'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
