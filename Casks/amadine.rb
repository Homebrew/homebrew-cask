cask 'amadine' do
  version '1.0.6'
  sha256 '7a01d163f7db0933425caa15b8d554b55871f705bf78126fd8afe163e64a218b'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
