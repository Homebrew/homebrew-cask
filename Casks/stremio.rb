cask 'stremio' do
  version '4.4.21'
  sha256 'a12e85e2e3798ca37ad0c60420d5d3b8b9f1524e0b51010d69cc757c612550d0'

  url "https://dl.strem.io/mac/v#{version}/Stremio+#{version}.dmg"
  appcast 'https://www.stremio.com/downloads'
  name 'Stremio'
  homepage 'https://www.strem.io/'

  app 'Stremio.app'
end
