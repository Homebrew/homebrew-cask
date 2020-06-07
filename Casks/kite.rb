cask 'kite' do
  version '0.20200605.0'
  sha256 '943a361af8c90ce66b195f743f7b5ef3bf166f034dd2f675217c78c7566628be'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
