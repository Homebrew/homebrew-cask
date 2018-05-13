cask 'deckset' do
  version '2.0.4,2486'
  sha256 'deaa799561714d9bfd5ee900baa0f88222fbf06ffc8564c3bfe40dc1dcc3d128'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml',
          checkpoint: '1af92d4c723c44dab50746655008451664d275e5d1eba40dcbd9aa622301c7ad'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Deckset.app'
end
