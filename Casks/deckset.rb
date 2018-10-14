cask 'deckset' do
  version '2.0.7,2500'
  sha256 'd5149edf26b4c8e2c20dbfe34dc5a6eb805eea486f1c7be885141ad713a88026'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :sierra'

  app 'Deckset.app'
end
