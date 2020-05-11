cask 'kite' do
  version '0.20200510.0'
  sha256 '201eb62d5d087ab1f456d6f35941fa3e1b9596266897feee6082c52b90769fe4'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
