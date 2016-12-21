cask 'lightworks' do
  version '12.6.0.1'
  sha256 '1d1c9745e5c886aecf7729281e73b8fb280ad31b1773bc5c0a4b7000fbd1dbc0'

  url "http://downloads.lwks.com/lightworks_v#{version}.dmg"
  name 'Lightworks'
  homepage 'https://www.lwks.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Lightworks.app'
end
