cask 'opera' do
  version '42.0.2393.94'
  sha256 '7421382175f938883612d8ff61fc3086894472ccbfc39bad36547afce98a82c8'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
