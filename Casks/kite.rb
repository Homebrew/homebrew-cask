cask 'kite' do
  version '0.20180725.0'
  sha256 '79256cc1d3cce5b7d5bc55ea92cfb3107b96919d2a9009b972e7f8c7b063f185'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
