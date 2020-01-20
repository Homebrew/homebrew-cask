cask 'kstars' do
  version '3.3.9'
  sha256 '0e615653ae081ed1829e6f5ab5ac24f5767bd2f19aae1d2605217ba7f2707ad5'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
