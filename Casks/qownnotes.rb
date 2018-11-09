cask 'qownnotes' do
  version '18.11.1,b3909-165331'
  sha256 '6b5c4f49cf9b087ac5ac097ea9702c41f25756dd4e18cafced03d5bcc1cc06c1'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
