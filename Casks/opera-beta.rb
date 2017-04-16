class OperaBeta < Cask
  version '25.0.1614.35'
  sha256 '058680c29a05a4b8f10f19b0d6fc73eb2d0645325e73177ac7522aa77e712be8'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
