cask 'amadine' do
  version '1.0.1'
  sha256 '869510a25a3a710de4904f0a5035767d56b8725aa430152a7f785a3756d7aff2'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
