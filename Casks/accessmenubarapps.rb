cask :v1 => 'accessmenubarapps' do
  version '2.4'
  sha256 '1065fbb4ca009758d4f303ed2106bd82a5ae21233b478f50fea3ddaa318473ce'

  url "http://www.ortisoft.de/resources/AccessMenuBarApps#{version}.dmg"
  name 'AccessMenuBarApps'
  appcast 'http://www.ortisoft.de/accessmenubarapps/profileInfo.php',
          :sha256 => '4963699d6d9a67e002172b57c632cac982980d6b681c759f60a471dc585e4706'
  homepage 'http://www.ortisoft.de/accessmenubarapps/'
  license :gratis

  app 'AccessMenuBarApps.app'
end
