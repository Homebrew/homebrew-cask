cask 'espresso' do
  version '5.2.2'
  sha256 '6df0b4fa71269ed2ac8ba5d0698e1f516a9cc40fa002f98a4ae48731235755c3'

  url "https://espressoapp.com/updates/archives/Espresso-#{version}.zip"
  appcast 'https://espressoapp.com/updates/'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
