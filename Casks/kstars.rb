cask 'kstars' do
  version ':latest'
  sha256 '514b1b3ac52fca4b4623e2feb98f2429683dd2e6bf883956674e7033abd6bfbc'

  url "http://www.indilib.org/jdownloads/kstars/kstars-latest.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
