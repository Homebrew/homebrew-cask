cask 'loadmytracks' do
  version :latest
  sha256 :no_check

  # cluetrust.com is the official download host per the product homepage
  url 'https://www.cluetrust.com/Downloads/LoadMyTracks.dmg'
  appcast 'https://www.cluetrust.com/AppCasts/LoadMyTracks.xml',
          :sha256 => '6baae7f573adfbe92309f76901f6edb22235a91b90fc681bf8f62f3ae787ce9f'
  name 'LoadMyTracks'
  homepage 'http://www.loadmytracks.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LoadMyTracks.app'
end
