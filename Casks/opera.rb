cask 'opera' do
  version '56.0.3051.102'
  sha256 '33c9266a41d1c4daf227950198c89548995e88001e120368d444233dc0d0045f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
