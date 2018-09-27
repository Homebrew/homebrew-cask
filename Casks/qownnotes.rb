cask 'qownnotes' do
  version '18.09.4,b3844-111449'
  sha256 '4fb5949b7eb357a67c5a36c3cd1f6618280611f06dfc9314659acd0c63a6429c'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
