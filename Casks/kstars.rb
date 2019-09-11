cask 'kstars' do
  version '3.2.3'
  sha256 '4d802a6557757fa284741d8aad6c7ab005f68904970f0a7a8acb26b443f34939'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
