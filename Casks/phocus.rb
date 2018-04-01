cask 'phocus' do
  version '3.1.5'
  sha256 'ac51c94f95b8aec3d64daf94b259a1f926ba64aba82ddd7d047ddc32b72dea92'

  url "http://static.hasselblad.com/2017/04/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  app 'Phocus.app'
end
