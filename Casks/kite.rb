cask 'kite' do
  version '0.20200423.1'
  sha256 'd0003464c5925193d7be6e9bdec2389e6d1346f4da9e434d465c86c055182c1d'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
