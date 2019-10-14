cask 'macbreakz' do
  version '5.34'
  sha256 '347c0d6f2379d5fa1b3737d39535dc48531c7c0c4f4104874caaeda5f0c7bb80'

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
  name 'MacBreakZ'
  homepage 'https://www.publicspace.net/MacBreakZ/'

  app "MacBreakZ #{version.major}.app"
end
