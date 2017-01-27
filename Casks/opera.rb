cask 'opera' do
  version '42.0.2393.517'
  sha256 '3335ee75a54d9a0572e72a97d34d5189b777af1328a9d912dc294db80bbf19bb'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
