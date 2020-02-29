cask 'espresso' do
  version '5.3'
  sha256 '608520ea3aa87aea287f2b3c25f792704f2663ded5474ac7e4a168a26ed168b0'

  # downloads.kangacode.com was verified as official when first introduced to the cask
  url "https://downloads.kangacode.com/Espresso/Espresso_#{version}.zip"
  appcast 'https://espressoapp.com/updates/'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
