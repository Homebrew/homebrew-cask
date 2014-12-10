cask :v1 => 'accessmenubarapps' do
  version '2.4'
  sha256 '1065fbb4ca009758d4f303ed2106bd82a5ae21233b478f50fea3ddaa318473ce'

  url "http://www.ortisoft.de/resources/AccessMenuBarApps#{version}.dmg"
  homepage 'http://www.ortisoft.de/accessmenubarapps/'
  license :unknown    # todo: improve this machine-generated value

  app 'AccessMenuBarApps.app'
end
