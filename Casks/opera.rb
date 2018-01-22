cask 'opera' do
  version '50.0.2762.67'
  sha256 '834e1fad0a23baf5c80d2497f7ee687536e069407ee3306de1bd244e108c4652'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
