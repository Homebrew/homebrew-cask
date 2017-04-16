class OperaBeta < Cask
  version '25.0.1614.31'
  sha256 'd2ff9cc72cfe20fa4e70b641b9cca495cc36a4f4277ede6b4a81386d976d0990'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
