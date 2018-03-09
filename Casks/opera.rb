cask 'opera' do
  version '51.0.2830.55'
  sha256 'ccea6768d378b2f7e1aea43e3d7b8617dd4dae50688839d8f8559066fdfd2fae'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
