cask 'kite' do
  version '0.20190402.1'
  sha256 'd94c47ceefe06d560fb14c885abee9d6669785fea8f4b30af3846cdaa3a79bd9'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
