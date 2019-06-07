cask 'amadine' do
  version '1.0.2'
  sha256 '3668a7e82fabf7be8f6464d14f4ed37ad23349dfbe8469cce1a2df7eaf04f1b8'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
