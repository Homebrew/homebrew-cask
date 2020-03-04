cask 'espresso' do
  version '5.3.2'
  sha256 'ce23df1e9c4874805f91c838d0f8d0d368c6acbc09e3b20af0f3f8d62c4a4083'

  # downloads.kangacode.com was verified as official when first introduced to the cask
  url "https://downloads.kangacode.com/Espresso/Espresso_#{version}.zip"
  appcast 'https://espressoapp.com/updates/'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
