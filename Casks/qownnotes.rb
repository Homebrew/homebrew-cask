cask 'qownnotes' do
  version '18.06.6,b3652-080019'
  sha256 '66f56b287eabff8531c3bcc93a6bbc1d12167ea9cedbd12ac6b2dc1e1a03e400'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
