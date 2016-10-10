cask 'astah-community' do
  version '7.0.0'
  sha256 '27e05ceaf64bc4ebdb9dcce2d042380d7c141e35b6f2d8e2f91a7c1ff57703dd'

  url "http://cdn.astah.net/downloads/astah-community-#{version.dots_to_underscores}-846701-MacOs.dmg"
  name 'Change Vision Astah Community'
  homepage 'http://astah.net/editions/community'

  pkg "astah community ver #{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.change-vision.astahcommunity.astahcommunity.pkg'
end
