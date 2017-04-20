cask 'kite' do
  version '0.20170419.0'
  sha256 '6794196ba6365433fece6e2c8004b0ba32b28973c24c2f85a0553a850039f262'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'a0d6674f48647c35dd58a06fc3db29cebe7ad29e33537ab05e356fdc5ac807b2'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
