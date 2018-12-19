cask 'kstars' do
  version '2.9.8'
  sha256 'a01ca011d8c796e8357e3a81520548bcec9b5e788c4d930fe727aaf236c65e90'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
