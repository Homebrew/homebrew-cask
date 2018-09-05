cask 'espresso' do
  version '5.2.1'
  sha256 '2bb0d17e4c91bec5f17b997310b8ad01a27023c73b07e1c9405681ef2c82eccb'

  url "https://espressoapp.com/updates/archives/Espresso-#{version}.zip"
  appcast 'https://espressoapp.com/updates/'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
