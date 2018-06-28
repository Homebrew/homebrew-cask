cask 'qownnotes' do
  version '18.06.7,b3660-161400'
  sha256 '691560f86c95a5fdc0d51e0e59991775a2a6e1ba302fb4178c02c56812f50df3'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
