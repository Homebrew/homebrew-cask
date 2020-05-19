cask 'kite' do
  version '0.20200513.0'
  sha256 'fab0f9591a2f9dd530881aab48f33054f276223d19c66e2044831e7c9eed38d2'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
