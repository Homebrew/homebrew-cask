cask 'macbreakz' do
  version '5.33'
  sha256 'b03a578755d9df2be021653508f24171c5a33da275235dc74b78f8af0ffc1703'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml"
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'

  app "MacBreakZ #{version.major}.app"
end
