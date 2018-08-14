cask 'deckset' do
  version '2.0.6,2495'
  sha256 '399f455d58bf26fab2c03124453f1524afa92358a820a42976f6dc53a2290176'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Deckset.app'
end
