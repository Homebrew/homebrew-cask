cask 'iexplorer' do
  version '3.9.5.0'
  sha256 '05c56a45cb1ac8eab46ffe407a74cd83921aab386ffc8f7540a7ee9849317650'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '4406a3f332fbbd02feed87170a1d1c5e5dfa7beb81c2897397eb2affb551fdf6'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
