cask 'amadine' do
  version '1.0.8'
  sha256 'cb02e58a577eca830ccbf22076bb93921d59532e54f6bba40343fefb536531be'

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
