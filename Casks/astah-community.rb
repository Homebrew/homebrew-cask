cask 'astah-community' do
  version '7.2.0,1ff236'
  sha256 '81b12fc1145ec28ca82d87a0f13d2763362d55136759fe324192c65943215194'

  # cdn.change-vision.com was verified as official when first introduced to the cask
  url "http://cdn.change-vision.com/files/astah-community-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  appcast 'http://astah.net/release-notes/community',
          checkpoint: '10700fb03bcc1534619812005dc11abb16f010f81418bb0ccb98fa3f750c862d'
  name 'Change Vision Astah Community'
  homepage 'http://astah.net/editions/community'

  pkg "astah community ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahcommunity.astahcommunity.pkg'
end
