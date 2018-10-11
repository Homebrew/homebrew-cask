cask 'qownnotes' do
  version '18.10.2,b3868-155632'
  sha256 'd1ac5c984a5be622c1cd16989467ad093e7f37efbefa23eb0664b05c9d644379'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
