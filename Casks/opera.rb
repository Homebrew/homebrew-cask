class Opera < Cask
  version '24.0.1558.53'
  sha256 'c75e05f0c85ae50939be05f122d74c2f1228aca6012aa1ff6b34bd9ca769c83d'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'

  link 'Opera.app'
end
