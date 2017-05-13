cask :v1 => 'blue-jeans-app' do
  version '1.5.2'
  sha256 '757edfba7811cbc20fd001bc9b6c8e7ec06b80578b1b01d866e7fea65da0869d'

  url 'https://swdl.bluejeans.com/desktop/mac/launchers/BlueJeansLauncher_live_152.dmg'
  name 'Blue Jeans App'
  homepage 'http://bluejeans.com/downloads'
  license :closed

  app 'Blue Jeans Launcher.app'
end
