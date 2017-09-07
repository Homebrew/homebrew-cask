cask 'qownnotes' do
  version '17.07.9,b3124-102541'
  sha256 '529a039151fd99a22dfedc9f42cd1500de693555e9915ce1b5683ae0a265102e'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '1fd46c8e2420d29d8ceace6780009a381f44b62b1cf7424802d6630024067d27'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
