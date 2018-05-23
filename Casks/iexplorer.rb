cask 'iexplorer' do
  version '4.2.0'
  sha256 '9a0ad366ed52218f1f10afaeac85d039cfb22449e4a6ada2c4452186a2626b7b'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
