cask 'qownnotes' do
  version '18.10.0,b3857-113458'
  sha256 'f09613589f9f91ebdeabb5f4afc0bc4b563800aceb3c0d44e959a779305042b8'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
