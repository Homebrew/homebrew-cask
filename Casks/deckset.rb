cask 'deckset' do
  version '2.0.12,2539'
  sha256 '0dd22bda5633478b585405b2b971fc41df6c2ee4ce33f610cf6a067b3fc2ce2d'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :sierra'

  app 'Deckset.app'
end
