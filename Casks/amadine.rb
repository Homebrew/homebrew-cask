cask 'amadine' do
  version '1.0.5'
  sha256 'a8cb50098824cdb1f20e6ac7c5f59ae923ec37173ae5e51dc135d719ca198e52'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
