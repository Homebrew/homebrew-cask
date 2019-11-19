cask 'onepile' do
  version '2.2-1106'
  sha256 '8554a14a87ea476e1b596147a80ac92a91cf14eb0de948079597e7d48705b316'

  url "https://onepile.app/update/macos/OnePile-#{version}.zip"
  appcast 'https://onepile.app/sparklecast.xml'
  name 'OnePile'
  homepage 'https://onepile.app/'

  depends_on macos: '>= :high_sierra'

  app 'OnePile.app'
end
