cask :v1 => 'iexplorer' do
  version '3.8.5.0'
  sha256 'f04d341859b8c367209cf10912ee64dcff0cf988730644f0ca48398374a5a4ab'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '1f78bbb1181e2c318c7f1e5c1d8a75a79110248346918cc9e9b739b696eec24d'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'iExplorer.app'
end
