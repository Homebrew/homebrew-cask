cask 'deckset' do
  version '2.0.10,2521'
  sha256 '1bf4aa857a8a2bee28962a6c7b19c2ac50a47b71937b0f97834fa253451c0453'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :sierra'

  app 'Deckset.app'
end
