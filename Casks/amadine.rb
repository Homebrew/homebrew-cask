cask 'amadine' do
  version '1.0.9'
  sha256 'c7da10dcd0d3de2e46873b2595c5f906ca2a080cb15166f5f24b290983ffba17'

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
