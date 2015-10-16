cask :v1 => 'astah-community' do
  version '7.0.0'
  sha256 '27e05ceaf64bc4ebdb9dcce2d042380d7c141e35b6f2d8e2f91a7c1ff57703dd'

  url "http://cdn.astah.net/downloads/astah-community-#{version.gsub('.','_')}-846701-MacOs.dmg"
  name 'Astah Community'
  homepage 'http://astah.net/editions/community'
  license :gratis
  tags :vendor => 'Change Vision'

  pkg "astah community ver #{version.gsub('.','_')}.pkg"

  uninstall :pkgutil => 'com.change-vision.astahcommunity.astahcommunity.pkg'
end
