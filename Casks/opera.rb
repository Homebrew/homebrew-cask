cask 'opera' do
  version '48.0.2685.52'
  sha256 '5d56bb21f2322e123130c79d21c71907a536a7974c09faa4792953e19c5e3cb4'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
