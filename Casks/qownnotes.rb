cask 'qownnotes' do
  version '16.11.16,b2545-185156'
  sha256 '98e6546870a8b1202d6839ba0d1819f27b9b7f3ab626840e50135f106f8fe099'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '8428e3522fe51de301d61cf8e98fbe42b1ddab9a07e3c4ba03508086b683d6c6'
  name 'QOwnNotes'
  homepage 'http://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
