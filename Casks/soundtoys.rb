cask 'soundtoys' do
  version '5.2.0,12502'
  sha256 'e991f754a07e636f2671538859033e5c60d73079097ed8725c241872a2c2e2bd'

  # s3.amazonaws.com/soundtoys5 was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/soundtoys5/#{version.after_comma}/Soundtoys#{version.major}_#{version.before_comma}.#{version.after_comma}.dmg"
  name 'Soundtoys Bundle'
  homepage "https://www.soundtoys.com/product/soundtoys-#{version.major}/"

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil: 'com.soundtoys.com.soundtoys.Soundtoys*'

  zap pkgutil: 'com.paceap.pkg.eden.*'
end
