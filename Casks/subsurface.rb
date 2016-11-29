cask 'subsurface' do
  version '4.5.6'
  sha256 '9c56465cbfcfe28b23d3c05a168d46c974731c06023a3dd9b08bae6a8b0ae50c'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org'

  app 'Subsurface.app'
end
