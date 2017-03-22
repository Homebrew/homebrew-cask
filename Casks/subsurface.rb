cask 'subsurface' do
  version '4.6.3'
  sha256 '69ec5b237faddf1257663c62e9d959843913ae5f314cef2fc7b788b99dff26da'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
