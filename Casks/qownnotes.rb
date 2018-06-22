cask 'qownnotes' do
  version '18.06.5,b3647-205200'
  sha256 '3176a7dec5f743e3167fb2bd6bc9523aa9534994630f7d46c87060c85b3c6cc4'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
