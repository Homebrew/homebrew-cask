cask 'kite' do
  version '0.20200403.0'
  sha256 'a15a50eba675276c105898dda8ca984135157ef2806285457966b2d7d9a0479a'

  # draqv87tt43s0.cloudfront.net was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
