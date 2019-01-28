cask 'qownnotes' do
  version '19.1.10,b4114-085430'
  sha256 '59bfb01d21d26b1dc8dc688b475fe262a8ab2062e5af3b2a8fd85b88463e89af'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
