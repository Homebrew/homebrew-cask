cask 'subsurface' do
  version '4.9.6'
  sha256 '0510dfc8a83419325bd6384c38fd5328603df77fa2fed6d3cafea44975a4c45d'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast 'https://subsurface-divelog.org/download/'
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
