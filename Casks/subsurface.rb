cask 'subsurface' do
  version '4.8.3'
  sha256 'a798019d7c6ef9bc8c23b57f07440068361e16b78ddba6ea8b607b719fb1569b'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
