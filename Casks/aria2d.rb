cask 'aria2d' do
  version '1.3.4'
  sha256 '0bbfa96007fbae53d42b8a524ec21aa8cf9376d1757436aa33525ae74ddb835d'

  # githubusercontent.com/xjbeta was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Aria2D%20#{version}.dmg"
  appcast 'https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Appcast.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
