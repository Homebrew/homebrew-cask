cask 'subsurface' do
  version '4.6.4'
  sha256 'e6d9c1e39e158ca9879625a758dca1c7b244a881113f4970ff3fa62f12d79df5'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
