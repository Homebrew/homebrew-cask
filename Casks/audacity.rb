cask :v1 => 'audacity' do
  version '2.1.1'
  sha256 '266fa1b2f3aff3894730a8b0e9fcf5c24c93e726f15180855d2516c5c44de10e'

  # oldfoss.com is the official download host per the vendor homepage
  url "http://app.oldfoss.com:81/download/Audacity/audacity-macosx-ub-#{version}.dmg"
  name 'Audacity'
  homepage 'http://audacityteam.org'
  license :gpl

  app 'Audacity/Audacity.app'

  zap :delete => '~/Library/Application Support/audacity'
end
