cask 'loadmytracks' do
  version :latest
  sha256 :no_check

  # cluetrust.com is the official download host per the product homepage
  url 'https://www.cluetrust.com/Downloads/LoadMyTracks.dmg'
  appcast 'https://www.cluetrust.com/AppCasts/LoadMyTracks.xml',
          :sha256 => 'd65520d6ff9a358ff2ff27514eff80f17b56df099fe6223f4780b16126560849'
  name 'LoadMyTracks'
  homepage 'http://www.loadmytracks.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LoadMyTracks.app'
end
