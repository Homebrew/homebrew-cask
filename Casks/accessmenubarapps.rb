cask 'accessmenubarapps' do
  version '2.4'
  sha256 '1065fbb4ca009758d4f303ed2106bd82a5ae21233b478f50fea3ddaa318473ce'

  url "http://www.ortisoft.de/resources/AccessMenuBarApps#{version}.dmg"
  appcast 'http://www.ortisoft.de/accessmenubarapps/profileInfo.php',
          :sha256 => '7c8e18b61138c0661d055c1618a13fbe4ac9f9183f32ab87b0acbd18f6ab8654'
  name 'AccessMenuBarApps'
  homepage 'http://www.ortisoft.de/accessmenubarapps/'
  license :gratis

  app 'AccessMenuBarApps.app'
end
