cask 'qownnotes' do
  version '18.08.2,b3735-173335'
  sha256 '2a44d9085e417c09fe00b4531e4aa5a5372fd94dc9879cc0454152896d93b827'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
