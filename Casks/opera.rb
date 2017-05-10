cask 'opera' do
  version '45.0.2552.635'
  sha256 '7b74718a1fa4b4d87ee307700ce2a2f6753c78dc640e9be662de4badb24e2ed3'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
