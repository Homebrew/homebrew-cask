cask :v1 => 'astah-community' do
  version '6.9.0'
  sha256 '6e3119f2a723a4a8975583d6693bae975e95fd3339666c07cfb16dd4138e7ceb'

  url 'http://cdn.astah.net/downloads/astah-community-6_9_0-b4c6e9-MacOs.dmg'
  homepage 'http://astah.net/editions/community'
  license :gratis
  tags :vendor => 'Change Vision'

  pkg 'astah community ver 6_9_0.pkg'

  uninstall :pkgutil => 'com.change-vision.astahcommunity.astahcommunity.pkg'
end
