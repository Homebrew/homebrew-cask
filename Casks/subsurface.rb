cask 'subsurface' do
  version '4.8.0'
  sha256 'b3b62120bb3c90e378d3b574ca8274b8ad474352c6b32d68fdf28699e2478d5a'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
