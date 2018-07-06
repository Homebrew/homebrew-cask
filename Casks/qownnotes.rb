cask 'qownnotes' do
  version '18.07.1,b3670-183652'
  sha256 'a27726ce67866e20a709353dd3cf7465d8ef3874a073916ca2b0d236a3522c5d'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
