cask 'iexplorer' do
  version '3.9.2.0'
  sha256 'f66a2df781dcfc6b607392fe989b8bf62d4ef7a00984f692be844eb899593f86'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: 'e7ca248391679847b7995f7a2b23be7fd26947f0da53a12eaf6792e44c91d19e'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
