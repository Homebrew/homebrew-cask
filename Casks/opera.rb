cask 'opera' do
  version '42.0.2393.85'
  sha256 '76f50245d1ef06f1a702590ebd2b24bccb379370b45975d608a179cddec03e5b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
