cask 'opera' do
  version '48.0.2685.35'
  sha256 '6704895e75dff228cd861f09aae894c928a9fdb196f8449f5e616fc9ebfb4516'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
