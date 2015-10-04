cask :v1 => 'iexplorer' do
  version '3.8.3.0'
  sha256 'c2cab0509c3da45d6b36ef23f4a3a668eef48088c1af761d7fd4e2b05b9bc9f2'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '5d7e0fd033f910971b84a35cbc8ce99d0f15e5f45b3a62bd569ae8ba75ff58cb'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'iExplorer.app'
end
