cask 'kstars' do
  version '2.9.5'
  sha256 'a556f9283280911318766ffeefd108a74d9dab9772f267edfd056418d0363a1a'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "http://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
