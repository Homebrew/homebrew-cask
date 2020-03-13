cask 'espresso' do
  version '5.4'
  sha256 '8aa2fb27503d230f7cd05c5d0d3b1be19468d78a260910272fa538d099515c5d'

  # downloads.kangacode.com was verified as official when first introduced to the cask
  url "https://downloads.kangacode.com/Espresso/Espresso_#{version}.zip"
  appcast 'https://espressoapp.com/updates/'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
