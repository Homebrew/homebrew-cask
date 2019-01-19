cask 'qownnotes' do
  version '19.1.6,b4085-180151'
  sha256 'b0f2da654a6d96aa4f93d30a6efcbb97b788867d26b17ba3245bcf111c7cc2df'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
