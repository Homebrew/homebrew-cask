cask 'soundtoys' do
  version '5.2.4.13665'
  sha256 'b0e636bbc6d67229d4027b82900fe11fbd77ed1d4c57725e8ba7b6b340ab5622'

  # s3.amazonaws.com/soundtoys was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/soundtoys#{version.major}/#{version.split('.')[3]}/Soundtoys#{version.major}_#{version}.dmg"
  name 'Soundtoys Bundle'
  homepage "https://www.soundtoys.com/product/soundtoys-#{version.major}/"

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil: "com.soundtoys.com.soundtoys.Soundtoys#{version.major}"

  zap pkgutil: [
                 'com.paceap.pkg.eden.activationexperience',
                 'com.paceap.pkg.eden.iLokLicenseManager',
                 'com.paceap.pkg.eden.licensed',
               ]
end
