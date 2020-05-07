cask 'kite' do
  version '0.20200504.1'
  sha256 'c4d2ab21d81ff52858e6ebeae1298922753d8a8de555dc81492e009599808b7e'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
