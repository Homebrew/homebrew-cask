cask 'astah-community' do
  version '7.1.0,f2c212'
  sha256 'b2736dc7b980b6e617b5bc49bdcc986581a91a80644bf737759f9da54fed6297'

  url "http://cdn.astah.net/downloads/astah-community-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  appcast 'http://astah.net/release-notes/community',
          checkpoint: '444e1de7421b8de9892beec2a7ddd5024a655dbcaf072c8135b296882a885b7e'
  name 'Change Vision Astah Community'
  homepage 'http://astah.net/editions/community'

  pkg "astah community ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahcommunity.astahcommunity.pkg'
end
