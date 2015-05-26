cask :v1 => 'cakebrew' do
  version '1.0.10'
  sha256 'b80f997c2e1d083a8a3e5603f3bdf22b245b4e9a55774c8cb65795e56458b28f'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => '0e3c9911bf2cc690a3df84e9d5d6acd89e49d7206cd8fd39396fc2837881643a'
  name 'Cakebrew'
  homepage 'http://www.cakebrew.com'
  license :gpl

  app 'Cakebrew.app'
end
