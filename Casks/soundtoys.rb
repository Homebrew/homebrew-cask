cask 'soundtoys' do
  version '5.0.4,11752'
  sha256 'da8bc65685bbc8cdbe45956cc668a4c8a2ccac0a16c11aba073ee215cc9a40a2'

  # s3.amazonaws.com/soundtoys5 was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/soundtoys5/#{version.after_comma}/Soundtoys#{version.major}_#{version.before_comma}.#{version.after_comma}.dmg"
  name 'Soundtoys Bundle'
  homepage "https://www.soundtoys.com/product/soundtoys-#{version.major}/"

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil: 'com.soundtoys.com.soundtoys.Soundtoys*'

  zap pkgutil: 'com.paceap.pkg.eden.*'
end
