cask 'subsurface' do
  version '4.5.3'
  sha256 '498629d001cefc6b54c4b604a9fdebb4cff33bef457df509566d07c99fbfcc3a'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org'
  license :gpl

  app 'Subsurface.app'
end
