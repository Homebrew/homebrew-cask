cask 'subsurface' do
  version '4.8.0'
  sha256 '51fe5c49eb726f5eda780cc3e845574648c3521b350a56d9d6574d035cabf3fc'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
