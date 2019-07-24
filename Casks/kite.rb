cask 'kite' do
  version '0.20190723.0'
  sha256 '3de673a4c202c0293913bdb57efd581519f359cdfa49a1c3acf4ed9e539a733e'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
