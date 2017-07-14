cask 'enpass' do
  version '5.5.7'
  sha256 'c93381bfa56d1f430f85ea70b760ab39fdf845e43e7921e4c0271003eebc2eda'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
