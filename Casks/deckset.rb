cask 'deckset' do
  version '2.0.3,2481'
  sha256 '00693f21e8c61676ab1ae15d06efe02181cea43525d7192ca43372d8da6486df'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml',
          checkpoint: '05ffb357f546a6437d897d83ec70fef22a2d2f03cbe36297c71171acf0b450fe'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  app 'Deckset.app'
end
