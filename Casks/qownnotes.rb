cask 'qownnotes' do
  version '18.10.1,b3863-171214'
  sha256 '8db4297dfb66bd997aa5d5ae87838ab8e8fe9014ee4aeadfba2b71c4f6c6999a'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
