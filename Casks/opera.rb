cask 'opera' do
  version '49.0.2725.64'
  sha256 '155198225494683d29ab0af67fef04ad93a560bea69aa2226141070bd3819e06'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
