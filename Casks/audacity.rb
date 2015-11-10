cask :v1 => 'audacity' do
  version '2.1.1'
  sha256 '266fa1b2f3aff3894730a8b0e9fcf5c24c93e726f15180855d2516c5c44de10e'

  url "http://downloads.sourceforge.net/project/audacity/audacity/#{version}/audacity-macosx-ub-#{version}.dmg"
  name 'Audacity'
  homepage 'http://audacityteam.org'
  license :gpl

  app 'Audacity/Audacity.app'
end
