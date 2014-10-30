class Airserver < Cask
  version '5.0.7'
  sha256 '56ac7cdba5dddc349776feb1390e84e4ba1f61fa94c2f4f8fea34193b7327228'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  homepage 'http://www.airserver.com'
  license :unknown

  app 'AirServer.app'
end
