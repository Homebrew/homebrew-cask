cask 'kstars' do
  version '3.4.2'
  sha256 'fea23b50fb903fc56b048f8ea36470325f32ca967d01b6f410b0f89ac564b215'

  # indilib.org/jdownloads/kstars/ was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
