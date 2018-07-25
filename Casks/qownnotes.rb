cask 'qownnotes' do
  version '18.07.7,b3705-104332'
  sha256 '6bc2ce2a01b4f839f16d13f50d14342bf0486a9abeff2f90f9c3b7f630818afd'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
