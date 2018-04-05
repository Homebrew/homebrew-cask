cask 'opera' do
  version '52.0.2871.40'
  sha256 'cb290459368f4f2005beeb3313f38ed7d541cdcac75adf55a0db33ce90f5da84'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
