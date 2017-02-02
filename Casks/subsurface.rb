cask 'subsurface' do
  version '4.6.0'
  sha256 '165abe44b5c28061b9c0f4651a0e6b45ebea2af942855b730c3e24f801a1d265'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
