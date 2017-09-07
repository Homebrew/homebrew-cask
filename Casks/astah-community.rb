cask 'astah-community' do
  version '7.1.0,f2c212'
  sha256 'b2736dc7b980b6e617b5bc49bdcc986581a91a80644bf737759f9da54fed6297'

  url "http://cdn.astah.net/downloads/astah-community-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  appcast 'http://astah.net/release-notes/community',
          checkpoint: '0c7f285cde1fcf69800947f9d5405fb1458f4ba20965231405c16695d11a335c'
  name 'Change Vision Astah Community'
  homepage 'http://astah.net/editions/community'

  pkg "astah community ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahcommunity.astahcommunity.pkg'
end
