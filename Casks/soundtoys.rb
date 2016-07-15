cask 'soundtoys' do
  version '5.0.4.11752'
  sha256 'da8bc65685bbc8cdbe45956cc668a4c8a2ccac0a16c11aba073ee215cc9a40a2'

  # s3.amazonaws.com/soundtoys was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/soundtoys#{version.major}/#{version.sub(%r{.*\.}, '')}/Soundtoys#{version.major}_#{version}.dmg"
  name 'Soundtoys Bundle'
  homepage "http://www.soundtoys.com/product/soundtoys-#{version.major}/"
  license :gratis

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil: 'com.soundtoys.com.soundtoys.Soundtoys*'

  zap pkgutil: 'com.paceap.pkg.eden.*'
end
