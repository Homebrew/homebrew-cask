cask 'aria2d' do
  version '1.3.3'
  sha256 '14e649369bac231edb8b4374c0de142297027a5de0e04c80f4dbfcaf634af216'

  # githubusercontent.com/xjbeta was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Aria2D%20#{version}.dmg"
  appcast 'https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Appcast.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
