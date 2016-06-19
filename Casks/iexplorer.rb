cask 'iexplorer' do
  version '3.9.10.0'
  sha256 '6b58ff7da9a5a1c5a0627df4a4fcf3eca2389428ef203682ceae0b23f6d1c7e0'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: 'a75ebd8e8305d8d9b4afce5db4b22b0b53f0d31ddb2aad56a93dd97ba1391dbc'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
