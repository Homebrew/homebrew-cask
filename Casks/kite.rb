cask 'kite' do
  version '0.20200626.0'
  sha256 '71e1da36136e4f2ba7e240f14f5ff82791b35cace584acd948598f5ef4738acf'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
