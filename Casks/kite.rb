cask 'kite' do
  version '0.20180619.0'
  sha256 '5b042044b8bd9b5c5130fcc8c7cef73c5afe09b7b9063416c626e98d45efe6e8'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
