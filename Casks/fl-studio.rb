cask 'fl-studio' do
  version '20.0.3.38'
  sha256 'c0f40d24ed67e722bc29b6e22e0b649ec6742c827d81bdbae1a38d2e50ad8d68'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
