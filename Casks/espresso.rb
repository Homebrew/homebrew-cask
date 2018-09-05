cask 'espresso' do
  version '5.2.0'
  sha256 '133d970a329dd440ccc607e6e2779cf48ddaddeefcc7b53a5047c89f0d2aac3a'

  url "https://espressoapp.com/updates/archives/Espresso-#{version}.zip"
  appcast 'https://espressoapp.com/updates/'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
