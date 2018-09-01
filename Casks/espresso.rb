cask 'espresso' do
  version '5.2.0'
  sha256 '062e7fafb547501cc44d92307f8350eafd46228a36ed362a9d8e8562151589ff'

  url "https://espressoapp.com/updates/archives/Espresso-#{version}.zip"
  appcast 'https://espressoapp.com/updates/'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
