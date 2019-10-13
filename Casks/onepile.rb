cask 'onepile' do
  version '2.1-1100'
  sha256 '7254482f2b5f32f102dec936eda2d9910d4df632b7cebf98111c1f3a6265492d'

  url "https://onepile.app/update/macos/OnePile-#{version}.zip"
  appcast 'https://onepile.app/sparklecast.xml'
  name 'OnePile'
  homepage 'https://onepile.app/'

  depends_on macos: '>= :high_sierra'

  app 'OnePile.app'
end
