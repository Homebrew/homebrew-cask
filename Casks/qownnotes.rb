cask 'qownnotes' do
  version '20.1.7,b5208-170839'
  sha256 '40588ae54bf31e569c5eaabf02ca427d77a6e1bc2b36ff98f6e5c175cecb051c'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
