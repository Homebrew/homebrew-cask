class Opera < Cask
  version '23.0.1522.77'
  sha256 '61d67cd47a14d5bcc93f85829442d13e38d3041e66f8d23a06f0feebfe12a8b0'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'

  link 'Opera.app'
end
