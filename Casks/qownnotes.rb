cask 'qownnotes' do
  version '18.06.1,b3622-160617'
  sha256 'c458b857b4bb42a774c7125d056f4aa7599cb5ed1d309d23ad7c333f410fc098'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
