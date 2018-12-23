cask 'qownnotes' do
  version '18.12.5,b3994-112006'
  sha256 'f4a1932edf49229b91d40871deafa9e6f6c48160e0f5d66c10fe40fea9eb66b1'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
