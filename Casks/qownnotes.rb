cask 'qownnotes' do
  version '19.2.5,b4170-083252'
  sha256 '636faf62fbca082b27611046c95a5176bf669581a6bac37562f6cbcf022a3ec0'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
