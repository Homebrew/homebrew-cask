cask 'qownnotes' do
  version '18.07.0,b3664-081125'
  sha256 'e1a44c9c58931bbfd1a50daca4d9bc315d85b0baef0a0219702f35eaa62b66fd'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
