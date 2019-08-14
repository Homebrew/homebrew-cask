cask 'qownnotes' do
  version '19.8.4,b4444-113022'
  sha256 'be4b74bd3141da939e19a88c520fbd96366852481a93bf36acbd38d173f31e08'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
