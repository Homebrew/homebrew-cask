cask 'amadine' do
  version '1.0.4'
  sha256 '2c5c46f92a3e40b2ecabf1d369d3449e4ee8e44f5917bd3caef169c682832c0a'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
