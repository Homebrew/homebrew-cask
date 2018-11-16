cask 'loadmytracks' do
  version '1.5.3,207'
  sha256 'c69d73b3cbfca483ac0918c09156237480739bc0a24170b83e395f0ce9d2fa68'

  # cluetrust.com was verified as official when first introduced to the cask
  url "https://www.cluetrust.com/Downloads/LoadMyTracks_#{version.after_comma}.dmg"
  appcast 'https://www.cluetrust.com/AppCasts/LoadMyTracks.xml'
  name 'LoadMyTracks'
  homepage 'https://www.loadmytracks.com/'

  depends_on macos: '>= :sierra'

  app 'LoadMyTracks.app'
end
