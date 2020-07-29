cask 'kite' do
  version '0.20200609.2'
  sha256 '3d4b4fe343f92307d022256523189f6316f7d3ab9e4c937f3644290f15483a6a'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
