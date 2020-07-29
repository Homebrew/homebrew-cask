cask 'subsurface' do
  version '4.9.5'
  sha256 'd383fe892665d1756344d74b77b82fd6a73ff7be3412253ad17a26e1ce312303'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast 'https://subsurface-divelog.org/download/'
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
